import 'package:drift/drift.dart';
import 'package:exam_weather_flutter/data/database/database.dart';
import 'package:exam_weather_flutter/data/database/tables.dart';

part 'favorites_dao.g.dart';

@DriftAccessor(tables: [Favorites])
class FavoritesDao extends DatabaseAccessor<AppDatabase> with _$FavoritesDaoMixin {
  FavoritesDao(AppDatabase db) : super(db);

  Future setFavorite(int id) => transaction(() async {
        await favorites.insertOne(FavoritesCompanion.insert(weatherId: Value(id)), mode: InsertMode.replace);
      });

  // Future<bool> isFavorite(int id) => customSelect(
  //     'SELECT (CASE WHEN favorites.weather_id IS NULL THEN FALSE ELSE TRUE END) as fav from favorites where weather_id = ?',
  //     variables: [Variable.withInt(id)],
  //     readsFrom: {favorites}).getSingle().then((row) => row.read('fav'));

  Future<bool> isFavorite(int id) =>
      (select(favorites)..where((tbl) => tbl.weatherId.equals(id))).getSingleOrNull().then((value) => value != null);

  Future<void> removeFavorite(int id) =>
      transaction(() => delete(favorites).delete(FavoritesCompanion(weatherId: Value(id))));
}
