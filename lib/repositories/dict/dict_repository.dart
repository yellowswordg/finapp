import 'package:finapp/entities/word_entity.dart';

import 'package:finapp/models/word.dart';
import 'package:finapp/repositories/dict/base_dict_repository.dart';

class DictRepository extends BaseDictRepository {
  Future<List<Word>> findInlanguage(
      {String search, String language, String translation}) async {
    // print("from repo translation:  ${translation} \n language:  ${language}");
    final db = await database();
    List<Map> data = await db
        .rawQuery("SELECT * FROM data WHERE $language LIKE '%$search%'");

    List<Word> words = data.map((word) {
      return Word.fromEntity(WordEntity.fromDb(word, translation));
    }).toList();

    return words;
  }

  @override
  void dispose() {}
}
