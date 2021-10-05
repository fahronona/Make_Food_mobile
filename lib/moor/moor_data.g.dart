// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_data.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Food extends DataClass implements Insertable<Food> {
  final int id;
  final String idMeal;
  final String title;
  final String area;
  final String category;
  final String instruction;
  Food(
      {required this.id,
      required this.idMeal,
      required this.title,
      required this.area,
      required this.category,
      required this.instruction});
  factory Food.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Food(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      idMeal: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_meal'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      area: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}area'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
      instruction: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}instruction'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_meal'] = Variable<String>(idMeal);
    map['title'] = Variable<String>(title);
    map['area'] = Variable<String>(area);
    map['category'] = Variable<String>(category);
    map['instruction'] = Variable<String>(instruction);
    return map;
  }

  FoodsCompanion toCompanion(bool nullToAbsent) {
    return FoodsCompanion(
      id: Value(id),
      idMeal: Value(idMeal),
      title: Value(title),
      area: Value(area),
      category: Value(category),
      instruction: Value(instruction),
    );
  }

  factory Food.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Food(
      id: serializer.fromJson<int>(json['id']),
      idMeal: serializer.fromJson<String>(json['idMeal']),
      title: serializer.fromJson<String>(json['title']),
      area: serializer.fromJson<String>(json['area']),
      category: serializer.fromJson<String>(json['category']),
      instruction: serializer.fromJson<String>(json['instruction']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idMeal': serializer.toJson<String>(idMeal),
      'title': serializer.toJson<String>(title),
      'area': serializer.toJson<String>(area),
      'category': serializer.toJson<String>(category),
      'instruction': serializer.toJson<String>(instruction),
    };
  }

  Food copyWith(
          {int? id,
          String? idMeal,
          String? title,
          String? area,
          String? category,
          String? instruction}) =>
      Food(
        id: id ?? this.id,
        idMeal: idMeal ?? this.idMeal,
        title: title ?? this.title,
        area: area ?? this.area,
        category: category ?? this.category,
        instruction: instruction ?? this.instruction,
      );
  @override
  String toString() {
    return (StringBuffer('Food(')
          ..write('id: $id, ')
          ..write('idMeal: $idMeal, ')
          ..write('title: $title, ')
          ..write('area: $area, ')
          ..write('category: $category, ')
          ..write('instruction: $instruction')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          idMeal.hashCode,
          $mrjc(
              title.hashCode,
              $mrjc(area.hashCode,
                  $mrjc(category.hashCode, instruction.hashCode))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Food &&
          other.id == this.id &&
          other.idMeal == this.idMeal &&
          other.title == this.title &&
          other.area == this.area &&
          other.category == this.category &&
          other.instruction == this.instruction);
}

class FoodsCompanion extends UpdateCompanion<Food> {
  final Value<int> id;
  final Value<String> idMeal;
  final Value<String> title;
  final Value<String> area;
  final Value<String> category;
  final Value<String> instruction;
  const FoodsCompanion({
    this.id = const Value.absent(),
    this.idMeal = const Value.absent(),
    this.title = const Value.absent(),
    this.area = const Value.absent(),
    this.category = const Value.absent(),
    this.instruction = const Value.absent(),
  });
  FoodsCompanion.insert({
    this.id = const Value.absent(),
    required String idMeal,
    required String title,
    required String area,
    required String category,
    required String instruction,
  })  : idMeal = Value(idMeal),
        title = Value(title),
        area = Value(area),
        category = Value(category),
        instruction = Value(instruction);
  static Insertable<Food> custom({
    Expression<int>? id,
    Expression<String>? idMeal,
    Expression<String>? title,
    Expression<String>? area,
    Expression<String>? category,
    Expression<String>? instruction,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idMeal != null) 'id_meal': idMeal,
      if (title != null) 'title': title,
      if (area != null) 'area': area,
      if (category != null) 'category': category,
      if (instruction != null) 'instruction': instruction,
    });
  }

  FoodsCompanion copyWith(
      {Value<int>? id,
      Value<String>? idMeal,
      Value<String>? title,
      Value<String>? area,
      Value<String>? category,
      Value<String>? instruction}) {
    return FoodsCompanion(
      id: id ?? this.id,
      idMeal: idMeal ?? this.idMeal,
      title: title ?? this.title,
      area: area ?? this.area,
      category: category ?? this.category,
      instruction: instruction ?? this.instruction,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idMeal.present) {
      map['id_meal'] = Variable<String>(idMeal.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (area.present) {
      map['area'] = Variable<String>(area.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (instruction.present) {
      map['instruction'] = Variable<String>(instruction.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodsCompanion(')
          ..write('id: $id, ')
          ..write('idMeal: $idMeal, ')
          ..write('title: $title, ')
          ..write('area: $area, ')
          ..write('category: $category, ')
          ..write('instruction: $instruction')
          ..write(')'))
        .toString();
  }
}

class $FoodsTable extends Foods with TableInfo<$FoodsTable, Food> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FoodsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER',
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idMealMeta = const VerificationMeta('idMeal');
  late final GeneratedColumn<String?> idMeal = GeneratedColumn<String?>(
      'id_meal', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _areaMeta = const VerificationMeta('area');
  late final GeneratedColumn<String?> area = GeneratedColumn<String?>(
      'area', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'category', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _instructionMeta =
      const VerificationMeta('instruction');
  late final GeneratedColumn<String?> instruction = GeneratedColumn<String?>(
      'instruction', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, idMeal, title, area, category, instruction];
  @override
  String get aliasedName => _alias ?? 'foods';
  @override
  String get actualTableName => 'foods';
  @override
  VerificationContext validateIntegrity(Insertable<Food> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_meal')) {
      context.handle(_idMealMeta,
          idMeal.isAcceptableOrUnknown(data['id_meal']!, _idMealMeta));
    } else if (isInserting) {
      context.missing(_idMealMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('area')) {
      context.handle(
          _areaMeta, area.isAcceptableOrUnknown(data['area']!, _areaMeta));
    } else if (isInserting) {
      context.missing(_areaMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('instruction')) {
      context.handle(
          _instructionMeta,
          instruction.isAcceptableOrUnknown(
              data['instruction']!, _instructionMeta));
    } else if (isInserting) {
      context.missing(_instructionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Food map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Food.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FoodsTable createAlias(String alias) {
    return $FoodsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $FoodsTable foods = $FoodsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [foods];
}
