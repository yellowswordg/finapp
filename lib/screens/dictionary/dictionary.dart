import 'package:finapp/bloc/dictionary_bloc.dart';
import 'package:finapp/models/data.dart';
import 'package:finapp/models/languages.dart';
import 'package:finapp/models/word.dart';
import 'package:finapp/size_config.dart';
import 'package:finapp/utils/constatnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../bloc/dictionary_bloc.dart';

import '../../utils/constatnts.dart';

import 'widgets/dict_list.dart';
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
    List<Languages> languagePicker = [
      Languages.english,
      Languages.french,
      Languages.german,
      Languages.russian
    ];
    TextEditingController controller;

    // double defaultSize = SizeConfig.defaultSize;
    return BlocConsumer<DictionaryBloc, DictionaryState>(
      listener: (context, state) {
        controller = TextEditingController(text: state.search);
        controller.selection = TextSelection.fromPosition(
          TextPosition(offset: controller.text.length),
        );
        if (state.isFailure) {
          return showDialog(
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
                hint: Text('${languages[state.translation].flag}'),
                items: [
                  ...List.generate(
                    languagePicker.length,
                    (index) => DropdownMenuItem(
                      value: languagePicker[index],
                      child: Text(languages[languagePicker[index]].flag),
                    ),
                  ),
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
          body: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 80.0, vertical: blockSizeVertical * 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FromToButton(
                          label: '🇫🇮   FIN ',
                          fromColor: kBlue,
                          toColor: kOrange,
                          onTap: () {
                            context
                                .bloc<DictionaryBloc>()
                                .add(DictionarySearchUpdated(
                                  '',
                                ));
                            context.bloc<DictionaryBloc>().add(
                                  DictionaryLanguageSearchUpdated(
                                    language: Languages.finnish,
                                  ),
                                );
                          },
                          language: state.language,
                          buttonLanguage: Languages.finnish,
                        ),
                        FromToButton(
                          label:
                              '${languages[state.translation].flag}  ${languages[state.translation].shortName}',
                          fromColor: kOrange,
                          toColor: kBlue,
                          onTap: () {
                            context.bloc<DictionaryBloc>().add(
                                DictionaryLanguageSearchUpdated(
                                    language: Languages.english));
                            context
                                .bloc<DictionaryBloc>()
                                .add(DictionarySearchUpdated(''));
                          },
                          language: state.language,
                          buttonLanguage: Languages.english,
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
                            controller: controller,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  context.bloc<DictionaryBloc>().add(
                                        DictionarySearchUpdated(''),
                                      );
                                },
                                icon: Icon(
                                  Icons.cancel,
                                  color: kRed.withOpacity(0.7),
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 0,
                              ),
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: blockSizeVertical * 3,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: blockSizeHorizontal * 90,
                        height: blockSizeVertical * 59,
                        child: state.wordList == null || state.search == ''
                            ? SizedBox.shrink()
                            : ListView.builder(
                                itemCount: state.wordList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  Word word = state.wordList[index];
                                  return DictList(
                                    blockSizeVertical: blockSizeVertical,
                                    blockSizeHorizontal: blockSizeHorizontal,
                                    word: word,
                                    state: state,
                                  );
                                },
                              ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
