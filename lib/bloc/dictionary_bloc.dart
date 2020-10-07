import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:finapp/models/data.dart';
import 'package:finapp/models/languages.dart';
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
    } else if (event is DictionaryTranslationUpdated) {
      yield* __mapDictionaryTranslationUpdatedToState(event);
    }
  }

  Stream<DictionaryState> _mapDictionarySearchUpdatedToState(
      DictionarySearchUpdated event) async* {
    final search = event.search;

    try {
      // this if operator disides whethere button chosen finnish or other language
      if (state.language == Languages.finnish) {
        List<Word> wordList = await repository.findInlanguage(
            search: search,
            language: languages[state.language].language,
            translation: languages[state.translation].language);
        yield state.update(
            wordList: wordList, search: search, language: Languages.finnish);
      } else {
        List<Word> wordList = await repository.findInlanguage(
            search: search,
            language: languages[state.translation].language,
            translation: languages[state.translation].language);
        yield state.update(
          wordList: wordList,
          search: search,
          language: Languages.english,
        );
      }
    } catch (e) {
      DictionaryState.failure(
          wordList: state.wordList, errorMessage: 'No Such word found in dict');
    }
  }

  Stream<DictionaryState> _mapDictionaryLanguageSearchUpdatedToState(
      DictionaryLanguageSearchUpdated event) async* {
    yield DictionaryState.submitting(wordList: [], );
    yield state.update(language: event.language);
  }

  Stream<DictionaryState> __mapDictionaryTranslationUpdatedToState(
      DictionaryTranslationUpdated event) async* {
    // print(event.translation);
    yield state.update(translation: event.translation);
  }
}
