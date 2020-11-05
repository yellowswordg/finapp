import 'dart:io';

import 'package:finapp/models/word.dart';
import 'package:finapp/repositories/base_repository.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

abstract class BaseDictRepository extends BaseRepository {
  static const String DB_NAME = 'dict.db';

  Future<Database> database() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, DB_NAME);

    final exists = await databaseExists(path);

    if (!exists) {
      // print("Creating new copy from asset");

      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      ByteData data = await rootBundle.load(join('assets/db/', DB_NAME));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      // print('opening existing one');
    }

    return await openDatabase(
      join(dbPath, DB_NAME),
    );
  }

  Future<List<Word>> findInlanguage(
      {String search, String language, String translation});
}
