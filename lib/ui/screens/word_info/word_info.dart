import 'package:auto_size_text/auto_size_text.dart';
import 'package:finapp/models/word.dart';
import 'package:finapp/ui/comon/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../size_config.dart';

class WordInfo extends StatelessWidget {
  final Word word;

  const WordInfo({Key key, this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double blockSizeVertical = SizeConfig.blockSizeVertical;
    double blockSizeHorizontal = SizeConfig.blockSizeHorizontal;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Icon(
          FontAwesomeIcons.bookOpen,
          size: 30,
          color: kRed.withOpacity(0.7),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 190,
                    child: AutoSizeText(
                      word.finnish,
                      style: Theme.of(context).primaryTextTheme.headline5,
                      maxLines: 2,
                    ),
                  ),
                  Text(
                    "KP: ${word.chapter}",
                    style: Theme.of(context).primaryTextTheme.headline5,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: blockSizeHorizontal * 90,
                height: blockSizeVertical * 70,
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
