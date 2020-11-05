import 'package:equatable/equatable.dart';

class Language extends Equatable {
  final String language;
  final String shortName;
  final String flag;

  const Language({this.language, this.shortName, this.flag});

  @override
  String toString() {
    return ''' Language {
    language: $language,
    shortName: $shortName,
    flag: $flag
  }''';
  }

  @override
  List<Object> get props => [language, shortName, flag];
}


