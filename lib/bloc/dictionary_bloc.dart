import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:finapp/models/language.dart';
import 'package:finapp/models/word.dart';
import 'package:finapp/repositories/dict/dict_repository.dart';
import 'package:meta/meta.dart';

part 'dictionary_event.dart';
part 'dictionary_state.dart';

class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  DictionaryBloc(this.repository) : super(DictionaryState.empty());
  final DictRepository repository;

  @override
  Stream<DictionaryState> mapEventToState(event) async* {
    if (event is DictionarySearchUpdated) {
      yield* _mapDictionarySearchUpdatedToState(event);
    } else if (event is DictionaryLanguageSearchUpdated) {
      yield* _mapDictionaryLanguageSearchUpdatedToState(event);
    }
  }

  Stream<DictionaryState> _mapDictionarySearchUpdatedToState(
      DictionarySearchUpdated event) async* {
    final search = event.search;
    try {
      if (state.language == Language.fin) {
        List<Word> wordList = await repository.findInlanguage(
            search: search, language: 'finnish');
        yield state.update(
            wordList: wordList, search: search, language: Language.fin);
      } else {
        List<Word> wordList = await repository.findInlanguage(
            search: search, language: 'english');
        yield state.update(
          wordList: wordList,
          search: search,
          language: Language.eng,
        );
      }
    } catch (e) {
      DictionaryState.failure(
          wordList: state.wordList, errorMessage: 'No Such word found in dict');
    }
  }

  Stream<DictionaryState> _mapDictionaryLanguageSearchUpdatedToState(
      DictionaryLanguageSearchUpdated event) async* {
    // print(event.language);
    yield state.update(language: event.language);
  }
}
