import 'package:finapp/entities/word_entity.dart';
import 'package:finapp/models/word.dart';
import 'package:finapp/utils/db_helper.dart';

class DictRepository {
  Future<List<Word>> findInFinnish({String search}) async {
    print(search);
    final db = await DBHelper.database();
    List<Map> data =
        await db.rawQuery("SELECT * FROM data WHERE finnish LIKE '$search%'");

    List<Word> words = data.map((word) {
      return Word.fromEntity(WordEntity.fromDb(word));
    }).toList();

    return words;
  }

  // Future<List<Word>> loadFirstNine() async {
  //   // print(search);
  //   final db = await DBHelper.database();
  //   List<Map> data = await db.rawQuery("SELECT * FROM data LIMIT 9");

  //   List<Word> words = data.map((word) {
  //     return Word.fromEntity(WordEntity.fromDb(word));
  //   }).toList();

  //   return words;
  // }
}
