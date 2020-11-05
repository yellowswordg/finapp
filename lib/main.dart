import 'package:finapp/bloc/dictionary_bloc.dart';
import 'package:finapp/repositories/dict/dict_repository.dart';
import 'package:finapp/screens/dictionary/dictionary.dart';
import 'package:finapp/utils/constatnts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DictionaryBloc(DictRepository()),
        )
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
