import 'package:finapp/size_config.dart';
import 'package:finapp/ui/comon/themes/light_theme.dart';
import 'package:flutter/material.dart';

class TableBackground extends StatelessWidget {
  const TableBackground({
    Key key,
    @required this.blockSizeHorizontal,
    @required this.blockSizeVertical,
  }) : super(key: key);

  final double blockSizeHorizontal;
  final double blockSizeVertical;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: blockSizeHorizontal * 90,
      height: blockSizeVertical * 59,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Theme.of(context).primaryColorLight,
        border: Border.all(
          width: 2,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
      child: Column(
        children: [
          ...List.generate(
            9,
            (index) {
              if (index == 0) {
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: SizeConfig.blockSizeVertical / 2.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: blockSizeVertical * 55 / 9,
                        width: blockSizeHorizontal * 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      Container(
                        height: blockSizeVertical * 55 / 9,
                        width: blockSizeHorizontal / 2,
                        color: kRed.withOpacity(0.4),
                      ),
                      Container(
                        height: blockSizeVertical * 55 / 9,
                        width: blockSizeHorizontal * 53,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
              if (index == 8) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: blockSizeVertical * 55 / 9,
                      width: blockSizeHorizontal * 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                    Container(
                      height: blockSizeVertical * 55 / 9,
                      width: blockSizeHorizontal / 2,
                      color: kRed.withOpacity(0.4),
                    ),
                    Container(
                      height: blockSizeVertical * 55 / 9,
                      width: blockSizeHorizontal * 53,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ],
                );
              }
              return Padding(
                padding: EdgeInsets.only(bottom: blockSizeVertical / 2.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: blockSizeVertical * 55 / 9,
                      width: blockSizeHorizontal * 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: blockSizeVertical * 55 / 9,
                      width: blockSizeHorizontal / 2,
                      color: kRed.withOpacity(0.4),
                    ),
                    Container(
                      height: blockSizeVertical * 55 / 9,
                      width: blockSizeHorizontal * 53,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
