import 'package:drift/drift.dart';
import 'package:exam_weather_flutter/data/database/database.dart';
import 'package:exam_weather_flutter/data/database/tables.dart';
import 'package:exam_weather_flutter/data/domain/weather_dto/local/local_weather_dto.dart';

part 'favorites_dao.g.dart';

@DriftAccessor(tables: [Favorites])
class FavoritesDao extends DatabaseAccessor<AppDatabase> with _$FavoritesDaoMixin{
  FavoritesDao(AppDatabase db): super(db);

  Future setFavorite(int id) => transaction(() async {
    favorites.insertOne(FavoritesCompanion.insert(weatherId: Value(id)), mode: InsertMode.replace);
  });

  Future<void> removeFavorite(int id) => transaction(() => delete(favorites).delete(FavoritesCompanion(
    weatherId: Value(id)
  )));

}