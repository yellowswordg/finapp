import 'dart:io';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart'; //medium between dart and data base stored on phone
import 'package:path/path.dart';

// import 'dart:typed_data';
// import 'package:flutter/services.dart';
class DBHelper {
  static const String DB_NAME = 'dict.db';

  static Future<Database> database() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, DB_NAME);

    final exists = await databaseExists(dbPath);

    if (!exists) {
      print("Creating new copy from asset");

      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      ByteData data = await rootBundle.load(join('assets/db', 'dict_db'));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print('opening existing one');
    }

    return await openDatabase(
      join(dbPath, DB_NAME),
    );
  }
}
