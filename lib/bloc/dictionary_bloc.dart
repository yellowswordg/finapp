import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dictionary_event.dart';
part 'dictionary_state.dart';

class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  DictionaryBloc() : super(DictionaryInitial());

  @override
  Stream<DictionaryState> mapEventToState(
    DictionaryEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
