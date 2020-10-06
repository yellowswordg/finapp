part of 'dictionary_bloc.dart';

@immutable
class DictionaryState {
  final List<Word> wordList;
  final String search;
  final bool isSubmiting;
  final bool isSuccess;
  final bool isFailure;
  final String errorMessage;
  final Language language;
  final Language translation;

  DictionaryState({
    this.search,
    this.wordList,
    this.isSubmiting,
    this.isSuccess,
    this.isFailure,
    this.errorMessage,
    this.language,
    this.translation,
  });

  factory DictionaryState.empty() {
    return DictionaryState(
      wordList: null,
      search: '',
      isSubmiting: false,
      isSuccess: false,
      isFailure: false,
      errorMessage: '',
      language: Language.finnish,
      translation: Language.english,
    );
  }
  factory DictionaryState.submitting(
      {@required List<Word> wordList, String search}) {
    return DictionaryState(
      wordList: wordList,
      search: search,
      isSubmiting: true,
      isSuccess: false,
      isFailure: false,
      errorMessage: '',
      translation: Language.english,
    );
  }
  factory DictionaryState.success({@required List<Word> wordList}) {
    return DictionaryState(
      wordList: wordList,
      search: '',
      isSubmiting: false,
      isSuccess: true,
      isFailure: false,
      errorMessage: '',
      translation: Language.english,
    );
  }
  factory DictionaryState.failure(
      {@required @required List<Word> wordList,
      @required String errorMessage}) {
    return DictionaryState(
      wordList: wordList,
      search: '',
      isSubmiting: false,
      isSuccess: false,
      isFailure: true,
      errorMessage: errorMessage,
      translation: Language.english,
    );
  }
  DictionaryState update({
    List<Word> wordList,
    String search,
    bool isSubmiting,
    bool isSuccess,
    bool isFailure,
    String errorMessage,
    Language language,
    Language translation,
  }) {
    // print(search);
    return copyWith(
      wordList: wordList,
      search: search,
      isSubmiting: isSubmiting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      errorMessage: errorMessage,
      language: language,
      translation: translation,
    );
  }

  DictionaryState copyWith({
    List<Word> wordList,
    String search,
    bool isSubmiting,
    bool isSuccess,
    bool isFailure,
    String errorMessage,
    Language language,
    Language translation,
  }) {
    return DictionaryState(
        wordList: wordList ?? this.wordList,
        search: search ?? this.search,
        isSubmiting: isSubmiting ?? this.isSubmiting,
        isSuccess: isSuccess ?? this.isSuccess,
        isFailure: isFailure ?? this.isFailure,
        errorMessage: errorMessage ?? this.errorMessage,
        language: language ?? this.language,
        translation: translation ?? this.translation);
  }

  String toString() => '''DictionaryState {
      wordList: $wordList,
      search: $search
      isSubmiting: $isSubmiting,
      isSuccess: $isSuccess,
      isFailure: $isFailure,
      errorMessage: $errorMessage,
      translation: $translation
  } ''';
}
