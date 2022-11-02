import 'package:flutter/material.dart';

import 'package:sqflite/sqflite.dart';

import '../../error/exceptions.dart';
import 'database_service.dart';

class DatabaseTable {
  static Future<void> cachedDataFromDb(
      Database db, BuildContext context) async {
    try {
      List<Map<String, Object?>> allahNames = await db.query('allah_names');

      // BlocProvider.of<AllahNameBloc>(context).add(
      //   FetchAllahName(allahNames),
      // );

      List<Map<String, Object?>> duas = await db.query('dua');

      // BlocProvider.of<DuaBloc>(context).add(
      //   FetchDua(duas),
      // );

      //final List<Map<String, Object?>> finalQurans = await DatabaseService().splitQuranQuery(db);

      // BlocProvider.of<QuranBloc>(context).add(
      //   FetchQuran(finalQurans),
      // );

      List<Map<String, Object?>> surahs = await db.query('surah');

      // BlocProvider.of<SurahBloc>(context).add(
      //   FetchSurah(surahs),
      // );

      List<Map<String, Object?>> tasbihs = await db.query('tasbih');

      // BlocProvider.of<TasbihBloc>(context).add(
      //   FetchTasbih(tasbihs),
      // );

      List<Map<String, Object?>> juzs = await db.query('juz');

      // BlocProvider.of<JuzBloc>(context).add(
      //   FetchJuz(juzs),
      // );
    } catch (e) {
      throw LocalException(e.toString());
    }
  }
}
