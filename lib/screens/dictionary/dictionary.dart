import 'package:finapp/bloc/dictionary_bloc.dart';
import 'package:finapp/models/language.dart';
import 'package:finapp/models/word.dart';
import 'package:finapp/size_config.dart';
import 'package:finapp/utils/constatnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../bloc/dictionary_bloc.dart';

import '../../utils/constatnts.dart';

import 'widgets/from_to_button.dart';
import 'widgets/highlight_text.dart';

class Dictionary extends StatefulWidget {
  @override
  _DictionaryState createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockSizeVertical = SizeConfig.blockSizeVertical;
    double blockSizeHorizontal = SizeConfig.blockSizeHorizontal;

    // double defaultSize = SizeConfig.defaultSize;
    return BlocConsumer<DictionaryBloc, DictionaryState>(
      listener: (context, state) {
        if (state.isFailure) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Error'),
                content: Text(state.errorMessage),
                actions: <Widget>[
                  FlatButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('OK'),
                  )
                ],
              );
            },
          );
        }
      },
      builder: (context, state) {
        // print(" scaffold : ${state.wordList?.length}");
        return Scaffold(
          resizeToAvoidBottomPadding: true,
          appBar: AppBar(
            centerTitle: true,
            title: Icon(
              FontAwesomeIcons.bookOpen,
              size: 30,
              color: kRed.withOpacity(0.7),
            ),
            actions: [
              DropdownButton(
                items: [
                  DropdownMenuItem(
                    value: Language.english,
                    child: Text('english'),
                  ),
                  DropdownMenuItem(
                    value: Language.russian,
                    child: Text('russian'),
                  )
                ],
                onChanged: (value) {
                  context
                      .bloc<DictionaryBloc>()
                      .add(DictionaryTranslationUpdated(translation: value));
                  
                },
              ),
              SizedBox(
                width: 10,
              )
            ],
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 80.0, vertical: blockSizeVertical * 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FromToButton(
                        from: 'FIN',
                        to: 'ENG',
                        fromColor: kBlue,
                        toColor: kOrange,
                        onTap: () => context.bloc<DictionaryBloc>().add(
                              DictionaryLanguageSearchUpdated(
                                language: Language.finnish,
                              ),
                            ),
                        language: state.language,
                        buttonLanguage: Language.finnish,
                      ),
                      FromToButton(
                        from: 'ENG',
                        to: 'FIN',
                        fromColor: kOrange,
                        toColor: kBlue,
                        onTap: () => context.bloc<DictionaryBloc>().add(
                              DictionaryLanguageSearchUpdated(
                                  language: Language.english),
                            ),
                        language: state.language,
                        buttonLanguage: Language.english,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: blockSizeHorizontal * 90,
                  height: SizeConfig.blockSizeHorizontal * 15,
                  child: Row(
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                            fillColor: Theme.of(context).primaryColor,
                            filled: true,
                            hintText: 'Enter a word',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(width: 0.8),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                width: 0.8,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          onChanged: (value) => context
                              .bloc<DictionaryBloc>()
                              .add(DictionarySearchUpdated(value)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        color: Theme.of(context).primaryColor,
                        onPressed: () => context
                            .bloc<DictionaryBloc>()
                            .add(DictionaryUpdated()),
                        child: Text(
                          'SEARCH',
                          style: TextStyle(
                            color: kRed,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: blockSizeVertical * 3,
                ),
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      width: blockSizeHorizontal * 90,
                      height: blockSizeVertical * 59,
                      child: state.wordList == null
                          ? SizedBox.shrink()
                          : ListView.builder(
                              itemCount: state.wordList.length,
                              itemBuilder: (BuildContext context, int index) {
                                Word word = state.wordList[index];
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          SizeConfig.blockSizeVertical / 3.5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              bottom:
                                                  SizeConfig.blockSizeVertical /
                                                      2.5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                alignment: Alignment.centerLeft,
                                                height:
                                                    blockSizeVertical * 55 / 9,
                                                width: blockSizeHorizontal * 35,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          blockSizeHorizontal *
                                                              3),
                                                  child: state.language ==
                                                          Language.finnish
                                                      ? HighlightText(
                                                          text: word.finnish,
                                                          highlight:
                                                              state.search,
                                                          highlightColor: kRed,
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xFF8A8A8A)),
                                                        )
                                                      : Text(
                                                          word.finnish,
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Color(
                                                                0xFF8A8A8A),
                                                          ),
                                                        ),
                                                ),
                                              ),
                                              Container(
                                                height:
                                                    blockSizeVertical * 50 / 9,
                                                width: blockSizeHorizontal / 2,
                                                color: kRed.withOpacity(0.4),
                                              ),
                                              Container(
                                                alignment: Alignment.centerLeft,
                                                height:
                                                    blockSizeVertical * 55 / 9,
                                                width: blockSizeHorizontal * 53,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          blockSizeHorizontal *
                                                              3),
                                                  child: state.language ==
                                                          Language.english
                                                      ? HighlightText(
                                                          text: state.translation == Language.english ? word.english  : word.russian,
                                                          highlight:
                                                              state.search,
                                                          highlightColor: kRed,
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: Color(
                                                                  0xFF8A8A8A)),
                                                        )
                                                      : Text(
                                                          word.english,
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: Color(
                                                                0xFF8A8A8A),
                                                          ),
                                                        ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
