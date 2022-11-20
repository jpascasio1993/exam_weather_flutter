import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:exam_weather_flutter/data/database/dao/favorites_dao.dart';
import 'package:exam_weather_flutter/data/database/dao/weather_dao.dart';
import 'package:exam_weather_flutter/data/database/tables.dart';
import 'package:exam_weather_flutter/data/domain/favorites_dto/favorites_dto.dart';
import 'package:exam_weather_flutter/data/domain/weather_dto/local/local_weather_dto.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

@DriftDatabase(tables: [Weathers, Favorites], daos: [WeatherDao, FavoritesDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    final dbFolder = await getApplicationSupportDirectory();
    final file = File(p.join(dbFolder.path, 'exam_weather.sqlite'));
    return NativeDatabase(file);
  });
}