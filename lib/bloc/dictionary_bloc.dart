import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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
    } else if (event is DictionaryUpdated) {
      yield* _mapDictionaryUpdatedToState();
    }
  }

  Stream<DictionaryState> _mapDictionarySearchUpdatedToState(
      DictionarySearchUpdated event) async* {
    final search = event.search;
    yield state.update(search: search);
  }

  Stream<DictionaryState> _mapDictionaryUpdatedToState() async* {
    try {
      List<Word> wordList =
          await repository.findInFinnish(search: state.search);
      print(wordList.length);
      yield state.update(wordList: wordList);
    } catch (e) {
      DictionaryState.failure(
          wordList: state.wordList, errorMessage: 'No Such word found in dict');
    }
    // yield state.update(
    //   isSubmiting: false,
    //   isFailure: false,
    //   isSuccess: false,
    //   errorMessage: '',
    // );
  }
}
