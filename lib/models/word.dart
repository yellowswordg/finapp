import 'package:equatable/equatable.dart';
import 'package:finapp/entities/word_entity.dart';

class Word extends Equatable {
  final int id;
  final String finnish;
  final String translation;
  final String english;
  final String russian;
  final int chapter;
  Word({
    this.id,
    this.finnish,
    this.translation,
    this.english,
    this.russian,
    this.chapter,
  });

  @override
  // TODO: implement props
  List<Object> get props => [id, chapter, finnish, english, russian];

  @override
  String toString() => '''Note {
    id: $id,
    finnish: $finnish,
    translation: $translation,
    english: $english,
    russian: $russian,
    chapter: $chapter

  }''';

  factory Word.fromEntity(WordEntity entity) {
    return Word(
      id: entity.id,
      finnish: entity.finnish,
      translation: entity.translation,
      english: entity.english,
      russian: entity.russian,
      chapter: entity.chapter,
    );
  }
  Word copyWith({
    String id,
    String finnish,
    String translation,
    bool isEditingBtns,
  }) {
    return Word(
      id: id ?? this.id,
      finnish: finnish ?? this.finnish,
      english: english ?? this.english,
      russian: russian ?? this.russian,
      chapter: chapter ?? this.chapter,
    );
  }
}
