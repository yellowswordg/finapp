import 'package:finapp/screens/dictionary/dictionary.dart';
import 'package:finapp/utils/constatnts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: kLightBlue,

        // appBarTheme: AppBarTheme(color: Colors.white),
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: Colors.grey),
        ),
      ),
      home: Dictionary(),
    );
  }
}
