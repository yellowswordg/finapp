import 'package:finapp/bloc/dictionary_bloc.dart';
import 'package:finapp/repositories/dict/dict_repository.dart';
import 'package:finapp/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/comon/themes/light_theme.dart';
import 'ui/screens/dictionary/dictionary.dart';

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
        ),
      ],
      child: MaterialApp(
        initialRoute: RouteGenerator.dictionary,
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'finword',
        theme: lightTheme,
        home: Dictionary(),
      ),
    );
  }
}
