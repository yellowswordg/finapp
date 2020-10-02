import 'package:equatable/equatable.dart';
import 'package:finapp/entities/word_entity.dart';

class Word extends Equatable {
  final int id;
  final String finnish;
  final String english;
  final String russian;
  final int chapter;
  Word({
    this.id,
    this.finnish,
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
    english: $english,
    russian: $russian,
    chapter: $chapter
  }''';

  factory Word.fromEntity(WordEntity entity) {
    return Word(
      id: entity.id,
      finnish: entity.finnish,
      english: entity.english,
      russian: entity.russian,
      chapter: entity.chapter,
    );
  }
  Word copyWith({
    String id,
    String title,
    String language,
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
