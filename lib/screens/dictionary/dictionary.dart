import 'package:finapp/bloc/dictionary_bloc.dart';
import 'package:finapp/data/data.dart';
import 'package:finapp/models/word.dart';
import 'package:finapp/screens/dictionary/widgets/TableBackground.dart';
import 'package:finapp/size_config.dart';
import 'package:finapp/utils/constatnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/constatnts.dart';

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
            title: Text('dict'),
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
                        from: 'ENG',
                        to: 'FIN',
                        fromColor: kBlue,
                        toColor: kOrange,
                      ),
                      FromToButton(
                        from: 'FIN',
                        to: 'ENG',
                        fromColor: kOrange,
                        toColor: kBlue,
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
                    // TableBackground(
                    //     blockSizeHorizontal: blockSizeHorizontal,
                    //     blockSizeVertical: blockSizeVertical),
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
                                                  child: Text(
                                                    word.finnish,
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color:
                                                            Color(0xFF8A8A8A)),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
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
                                                  child: Text(
                                                    word.english,
                                                    style: TextStyle(
                                                      color: Color(0xFFB9B9B9),
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
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

class FromToButton extends StatelessWidget {
  final String from;
  final String to;
  final Color fromColor;
  final toColor;
  const FromToButton({
    this.from,
    this.to,
    this.fromColor,
    this.toColor,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(vertical: 15),
      color: Theme.of(context).primaryColor,
      onPressed: () {},
      child: Row(
        children: [
          Text(from, style: TextStyle(color: fromColor)),
          Icon(
            Icons.keyboard_arrow_right,
            size: 12,
            color: Colors.grey,
          ),
          Text(to, style: TextStyle(color: toColor)),
        ],
      ),
    );
  }
}
