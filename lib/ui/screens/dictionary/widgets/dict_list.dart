import 'package:auto_size_text/auto_size_text.dart';
import 'package:finapp/bloc/dictionary_bloc.dart';
import 'package:finapp/models/languages.dart';
import 'package:finapp/models/word.dart';
import 'package:finapp/size_config.dart';
import 'package:finapp/ui/comon/themes/light_theme.dart';
import 'package:finapp/ui/screens/word_info/word_info.dart';
import 'package:flutter/material.dart';

import 'highlight_text.dart';

class DictList extends StatelessWidget {
  const DictList({
    Key key,
    @required this.blockSizeVertical,
    @required this.blockSizeHorizontal,
    @required this.word,
    @required this.state,
  }) : super(key: key);

  final double blockSizeVertical;
  final double blockSizeHorizontal;
  final Word word;
  final DictionaryState state;

  void _goToWordInfo({@required BuildContext context, @required Word word}) =>
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => WordInfo(
            word: word,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical / 3.5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: kWhite,
        ),
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(bottom: SizeConfig.blockSizeVertical / 2.5),
              child: GestureDetector(
                onTap: () => _goToWordInfo(context: context, word: word),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      height: blockSizeVertical * 55 / 9,
                      width: blockSizeHorizontal * 35,
                      child: Padding(
                        padding: EdgeInsets.only(left: blockSizeHorizontal * 3),
                        child: state.language == Languages.finnish
                            ? HighlightText(
                                text: word.finnish,
                                highlight: state.search,
                                highlightColor: kRed,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1,
                              )
                            : AutoSizeText(
                                word.finnish,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1,
                                maxLines: 2,
                              ),
                      ),
                    ),
                    Container(
                      height: blockSizeVertical * 50 / 9,
                      width: blockSizeHorizontal / 2,
                      color: kRed.withOpacity(0.4),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: blockSizeVertical * 55 / 9,
                      width: blockSizeHorizontal * 53,
                      child: Padding(
                        padding: EdgeInsets.only(left: blockSizeHorizontal * 3),
                        child: state.language != Languages.finnish
                            ? HighlightText(
                                text: word.translation,
                                highlight: state.search,
                                highlightColor: kRed,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1,
                              )
                            : AutoSizeText(
                                word.translation,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyText1,
                                maxLines: 2,
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
