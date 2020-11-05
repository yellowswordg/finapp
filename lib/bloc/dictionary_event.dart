part of 'dictionary_bloc.dart';

@immutable
abstract class DictionaryEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class DictionaryUpdated extends DictionaryEvent {
  final List<Word> wordList;

  DictionaryUpdated({this.wordList});

  @override
  String toString() => 'DictionaryLoaded { wordList: $wordList }';
  List<Object> get props => [wordList];
}

class DictionarySearchUpdated extends DictionaryEvent {
  final String search;

  DictionarySearchUpdated(this.search);

  @override
  String toString() => 'DictionarySearchUpdated { search: $search }';
  List<Object> get props => [search];
}

class DictionaryLanguageSearchUpdated extends DictionaryEvent {
  final Languages language;

  DictionaryLanguageSearchUpdated({this.language});

  @override
  String toString() => 'DictionaryLanguageSearchUpdated { search: $language }';
  List<Object> get props => [language];
}

class DictionaryTranslationUpdated extends DictionaryEvent {
  final Languages translation;

  DictionaryTranslationUpdated({this.translation});

  @override
  String toString() => 'DictionaryTranslationUpdated { search: $translation }';
  List<Object> get props => [translation];
}
