import 'package:drift/drift.dart';
import 'package:exam_weather_flutter/data/domain/favorites_dto/favorites_dto.dart';
import 'package:exam_weather_flutter/data/domain/weather_dto/local/local_weather_dto.dart';

@UseRowClass(LocalWeatherDTO)
class Weathers extends Table {
  @override
  Set<Column<Object>>? get primaryKey => {id};

  IntColumn get id => integer()();
  TextColumn get city => text()();
  TextColumn get status => text()();
  RealColumn get tempMin => real().named('temp_min')();
  RealColumn get tempMax => real().named('temp_max')();
  RealColumn get temp => real()();
  BoolColumn get favorite => boolean().named('fav')
      .withDefault(const Constant(false))();
}

@UseRowClass(FavoritesDTO)
class Favorites extends Table {
  @override
  Set<Column<Object>>? get primaryKey => {weatherId};
  IntColumn get weatherId => integer()();
}