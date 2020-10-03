import 'package:finapp/entities/word_entity.dart';
import 'package:finapp/models/word.dart';
import 'package:finapp/utils/db_helper.dart';

class DictRepository {
  Future<List<Word>> findInFinnish({String search}) async {
    final db = await DBHelper.database();
    List<Map> data =
        await db.rawQuery("SELECT * FROM data WHERE finnish LIKE '$search%'");
    List<Word> words =
        data.map((word) => (Word.fromEntity(WordEntity.fromDb(word))));

    return words;
  }
}
