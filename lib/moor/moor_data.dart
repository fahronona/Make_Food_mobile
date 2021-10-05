import 'package:moor_flutter/moor_flutter.dart';
part 'moor_data.g.dart';

class Foods extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get idMeal => text()();
  TextColumn get title => text()();
  TextColumn get area => text()();
  TextColumn get category => text()();
  TextColumn get instruction => text()();
}

@UseMoor(tables: [Foods])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: "db.sqlite", logStatements: true));
  @override
  int get schemaVersion => 1;
  Future<List<Food>> getAllMeal() => select(foods).get();

  Stream<List<Food>> watchAllMeal() => select(foods).watch();
  Future insertNewMeal(Food food) => into(foods).insert(food);
  Future deleteMeal(Food food) => delete(foods).delete(food);
  Future<List<Food>> CheckFav(String idMeal) {
    final _select = select(foods);
    if (idMeal != null) {
      _select..where((tbl) => tbl.idMeal.equals(idMeal));
    }
    return _select.get();
  }
}
