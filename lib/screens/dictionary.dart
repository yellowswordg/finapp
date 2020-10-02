import 'package:finapp/models/word.dart';
import 'package:finapp/size_config.dart';
import 'package:finapp/utils/constatnts.dart';
import 'package:flutter/material.dart';

class Dictionary extends StatefulWidget {
  @override
  _DictionaryState createState() => _DictionaryState();
}

class _DictionaryState extends State<Dictionary> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // double defaultSize = SizeConfig.defaultSize;
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
                  horizontal: 80.0, vertical: SizeConfig.blockSizeVertical * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text('ENG', style: TextStyle(color: kBlue)),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 12,
                          color: Colors.grey,
                        ),
                        Text('FIN', style: TextStyle(color: kOrange)),
                      ],
                    ),
                  ),
                  RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text('FIN', style: TextStyle(color: kOrange)),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 12,
                          color: Colors.grey,
                        ),
                        Text('ENG', style: TextStyle(color: kBlue)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: SizeConfig.blockSizeHorizontal * 90,
              height: SizeConfig.blockSizeHorizontal * 15,
              child: Row(
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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
                    onPressed: () {},
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
              height: SizeConfig.blockSizeVertical * 4,
            ),
            Stack(
              overflow: Overflow.visible,
              children: [
                // Positioned(
                //   top: -30,
                //   left: SizeConfig.blockSizeHorizontal * 90 / 2 - 15,
                //   child: Container(
                //     child: CustomPaint(
                //         size: Size(40, 40), painter: DrawTriangle()),
                //   ),
                // ),
                Container(
                    width: SizeConfig.blockSizeHorizontal * 90,
                    height: SizeConfig.blockSizeVertical * 60,
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
                                      height:
                                          SizeConfig.blockSizeVertical * 55 / 9,
                                      width:
                                          SizeConfig.blockSizeHorizontal * 35,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height:
                                          SizeConfig.blockSizeVertical * 55 / 9,
                                      width: SizeConfig.blockSizeHorizontal / 2,
                                      color: kRed.withOpacity(0.4),
                                    ),
                                    Container(
                                      height:
                                          SizeConfig.blockSizeVertical * 55 / 9,
                                      width:
                                          SizeConfig.blockSizeHorizontal * 53,
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
                                    height:
                                        SizeConfig.blockSizeVertical * 55 / 9,
                                    width: SizeConfig.blockSizeHorizontal * 35,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height:
                                        SizeConfig.blockSizeVertical * 55 / 9,
                                    width: SizeConfig.blockSizeHorizontal / 2,
                                    color: kRed.withOpacity(0.4),
                                  ),
                                  Container(
                                    height:
                                        SizeConfig.blockSizeVertical * 55 / 9,
                                    width: SizeConfig.blockSizeHorizontal * 53,
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
                              padding: EdgeInsets.only(
                                  bottom: SizeConfig.blockSizeVertical / 2.5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height:
                                        SizeConfig.blockSizeVertical * 55 / 9,
                                    width: SizeConfig.blockSizeHorizontal * 35,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    height:
                                        SizeConfig.blockSizeVertical * 55 / 9,
                                    width: SizeConfig.blockSizeHorizontal / 2,
                                    color: kRed.withOpacity(0.4),
                                  ),
                                  Container(
                                    height:
                                        SizeConfig.blockSizeVertical * 55 / 9,
                                    width: SizeConfig.blockSizeHorizontal * 53,
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
                    )
                    // child: ListView.separated(
                    //   itemCount: words.length,
                    //   separatorBuilder: (context, index) => Divider(
                    //     thickness: 2,
                    //     height: 0,
                    //     color: Theme.of(context).scaffoldBackgroundColor,
                    //   ),
                    //   itemBuilder: (BuildContext context, int index) {
                    //     Word word = words[index];
                    //     return Container(
                    //       child: Column(
                    //         children: [
                    //           Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Container(
                    //                 height: 50,
                    //                 width: SizeConfig.blockSizeHorizontal * 30,
                    //                 color: Colors.amber,
                    //               ),
                    //               Container(
                    //                 height: 50,
                    //                 width: SizeConfig.blockSizeHorizontal * 55,
                    //                 color: Colors.amber,
                    //               ),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     );
                    //   },
                    // ),
                    ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DrawTriangle extends CustomPainter {
  Paint _paint;
  DrawTriangle() {
    _paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
  }
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
