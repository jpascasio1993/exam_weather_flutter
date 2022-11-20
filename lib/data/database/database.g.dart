// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class WeathersCompanion extends UpdateCompanion<LocalWeatherDTO> {
  final Value<int> id;
  final Value<String> city;
  final Value<String> status;
  final Value<double> tempMin;
  final Value<double> tempMax;
  final Value<double> temp;
  final Value<bool> favorite;
  const WeathersCompanion({
    this.id = const Value.absent(),
    this.city = const Value.absent(),
    this.status = const Value.absent(),
    this.tempMin = const Value.absent(),
    this.tempMax = const Value.absent(),
    this.temp = const Value.absent(),
    this.favorite = const Value.absent(),
  });
  WeathersCompanion.insert({
    this.id = const Value.absent(),
    required String city,
    required String status,
    required double tempMin,
    required double tempMax,
    required double temp,
    this.favorite = const Value.absent(),
  })  : city = Value(city),
        status = Value(status),
        tempMin = Value(tempMin),
        tempMax = Value(tempMax),
        temp = Value(temp);
  static Insertable<LocalWeatherDTO> custom({
    Expression<int>? id,
    Expression<String>? city,
    Expression<String>? status,
    Expression<double>? tempMin,
    Expression<double>? tempMax,
    Expression<double>? temp,
    Expression<bool>? favorite,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (city != null) 'city': city,
      if (status != null) 'status': status,
      if (tempMin != null) 'temp_min': tempMin,
      if (tempMax != null) 'temp_max': tempMax,
      if (temp != null) 'temp': temp,
      if (favorite != null) 'fav': favorite,
    });
  }

  WeathersCompanion copyWith(
      {Value<int>? id,
      Value<String>? city,
      Value<String>? status,
      Value<double>? tempMin,
      Value<double>? tempMax,
      Value<double>? temp,
      Value<bool>? favorite}) {
    return WeathersCompanion(
      id: id ?? this.id,
      city: city ?? this.city,
      status: status ?? this.status,
      tempMin: tempMin ?? this.tempMin,
      tempMax: tempMax ?? this.tempMax,
      temp: temp ?? this.temp,
      favorite: favorite ?? this.favorite,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (tempMin.present) {
      map['temp_min'] = Variable<double>(tempMin.value);
    }
    if (tempMax.present) {
      map['temp_max'] = Variable<double>(tempMax.value);
    }
    if (temp.present) {
      map['temp'] = Variable<double>(temp.value);
    }
    if (favorite.present) {
      map['fav'] = Variable<bool>(favorite.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WeathersCompanion(')
          ..write('id: $id, ')
          ..write('city: $city, ')
          ..write('status: $status, ')
          ..write('tempMin: $tempMin, ')
          ..write('tempMax: $tempMax, ')
          ..write('temp: $temp, ')
          ..write('favorite: $favorite')
          ..write(')'))
        .toString();
  }
}

class $WeathersTable extends Weathers
    with TableInfo<$WeathersTable, LocalWeatherDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WeathersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _tempMinMeta = const VerificationMeta('tempMin');
  @override
  late final GeneratedColumn<double> tempMin = GeneratedColumn<double>(
      'temp_min', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _tempMaxMeta = const VerificationMeta('tempMax');
  @override
  late final GeneratedColumn<double> tempMax = GeneratedColumn<double>(
      'temp_max', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _tempMeta = const VerificationMeta('temp');
  @override
  late final GeneratedColumn<double> temp = GeneratedColumn<double>(
      'temp', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _favoriteMeta = const VerificationMeta('favorite');
  @override
  late final GeneratedColumn<bool> favorite = GeneratedColumn<bool>(
      'fav', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK ("fav" IN (0, 1))',
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns =>
      [id, city, status, tempMin, tempMax, temp, favorite];
  @override
  String get aliasedName => _alias ?? 'weathers';
  @override
  String get actualTableName => 'weathers';
  @override
  VerificationContext validateIntegrity(Insertable<LocalWeatherDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('temp_min')) {
      context.handle(_tempMinMeta,
          tempMin.isAcceptableOrUnknown(data['temp_min']!, _tempMinMeta));
    } else if (isInserting) {
      context.missing(_tempMinMeta);
    }
    if (data.containsKey('temp_max')) {
      context.handle(_tempMaxMeta,
          tempMax.isAcceptableOrUnknown(data['temp_max']!, _tempMaxMeta));
    } else if (isInserting) {
      context.missing(_tempMaxMeta);
    }
    if (data.containsKey('temp')) {
      context.handle(
          _tempMeta, temp.isAcceptableOrUnknown(data['temp']!, _tempMeta));
    } else if (isInserting) {
      context.missing(_tempMeta);
    }
    if (data.containsKey('fav')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['fav']!, _favoriteMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalWeatherDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocalWeatherDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      city: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}city'])!,
      status: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      tempMin: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}temp_min'])!,
      tempMax: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}temp_max'])!,
      temp: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}temp'])!,
      favorite: attachedDatabase.options.types
          .read(DriftSqlType.bool, data['${effectivePrefix}fav'])!,
    );
  }

  @override
  $WeathersTable createAlias(String alias) {
    return $WeathersTable(attachedDatabase, alias);
  }
}

class FavoritesCompanion extends UpdateCompanion<FavoritesDTO> {
  final Value<int> weatherId;
  const FavoritesCompanion({
    this.weatherId = const Value.absent(),
  });
  FavoritesCompanion.insert({
    this.weatherId = const Value.absent(),
  });
  static Insertable<FavoritesDTO> custom({
    Expression<int>? weatherId,
  }) {
    return RawValuesInsertable({
      if (weatherId != null) 'weather_id': weatherId,
    });
  }

  FavoritesCompanion copyWith({Value<int>? weatherId}) {
    return FavoritesCompanion(
      weatherId: weatherId ?? this.weatherId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (weatherId.present) {
      map['weather_id'] = Variable<int>(weatherId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesCompanion(')
          ..write('weatherId: $weatherId')
          ..write(')'))
        .toString();
  }
}

class $FavoritesTable extends Favorites
    with TableInfo<$FavoritesTable, FavoritesDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoritesTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _weatherIdMeta = const VerificationMeta('weatherId');
  @override
  late final GeneratedColumn<int> weatherId = GeneratedColumn<int>(
      'weather_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [weatherId];
  @override
  String get aliasedName => _alias ?? 'favorites';
  @override
  String get actualTableName => 'favorites';
  @override
  VerificationContext validateIntegrity(Insertable<FavoritesDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('weather_id')) {
      context.handle(_weatherIdMeta,
          weatherId.isAcceptableOrUnknown(data['weather_id']!, _weatherIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {weatherId};
  @override
  FavoritesDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoritesDTO(
      weatherId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}weather_id'])!,
    );
  }

  @override
  $FavoritesTable createAlias(String alias) {
    return $FavoritesTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $WeathersTable weathers = $WeathersTable(this);
  late final $FavoritesTable favorites = $FavoritesTable(this);
  late final WeatherDao weatherDao = WeatherDao(this as AppDatabase);
  late final FavoritesDao favoritesDao = FavoritesDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [weathers, favorites];
}
