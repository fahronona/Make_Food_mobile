// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_data.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Food extends DataClass implements Insertable<Food> {
  final String idmeal;
  final String title;
  final String area;
  final String category;
  final String instruction;
  final String urlImage;
  Food(
      {required this.idmeal,
      required this.title,
      required this.area,
      required this.category,
      required this.instruction,
      required this.urlImage});
  factory Food.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Food(
      idmeal: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}idmeal'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      area: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}area'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
      instruction: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}instruction'])!,
      urlImage: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}url_image'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['idmeal'] = Variable<String>(idmeal);
    map['title'] = Variable<String>(title);
    map['area'] = Variable<String>(area);
    map['category'] = Variable<String>(category);
    map['instruction'] = Variable<String>(instruction);
    map['url_image'] = Variable<String>(urlImage);
    return map;
  }

  FoodsCompanion toCompanion(bool nullToAbsent) {
    return FoodsCompanion(
      idmeal: Value(idmeal),
      title: Value(title),
      area: Value(area),
      category: Value(category),
      instruction: Value(instruction),
      urlImage: Value(urlImage),
    );
  }

  factory Food.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Food(
      idmeal: serializer.fromJson<String>(json['idmeal']),
      title: serializer.fromJson<String>(json['title']),
      area: serializer.fromJson<String>(json['area']),
      category: serializer.fromJson<String>(json['category']),
      instruction: serializer.fromJson<String>(json['instruction']),
      urlImage: serializer.fromJson<String>(json['urlImage']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idmeal': serializer.toJson<String>(idmeal),
      'title': serializer.toJson<String>(title),
      'area': serializer.toJson<String>(area),
      'category': serializer.toJson<String>(category),
      'instruction': serializer.toJson<String>(instruction),
      'urlImage': serializer.toJson<String>(urlImage),
    };
  }

  Food copyWith(
          {String? idmeal,
          String? title,
          String? area,
          String? category,
          String? instruction,
          String? urlImage}) =>
      Food(
        idmeal: idmeal ?? this.idmeal,
        title: title ?? this.title,
        area: area ?? this.area,
        category: category ?? this.category,
        instruction: instruction ?? this.instruction,
        urlImage: urlImage ?? this.urlImage,
      );
  @override
  String toString() {
    return (StringBuffer('Food(')
          ..write('idmeal: $idmeal, ')
          ..write('title: $title, ')
          ..write('area: $area, ')
          ..write('category: $category, ')
          ..write('instruction: $instruction, ')
          ..write('urlImage: $urlImage')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idmeal.hashCode,
      $mrjc(
          title.hashCode,
          $mrjc(
              area.hashCode,
              $mrjc(category.hashCode,
                  $mrjc(instruction.hashCode, urlImage.hashCode))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Food &&
          other.idmeal == this.idmeal &&
          other.title == this.title &&
          other.area == this.area &&
          other.category == this.category &&
          other.instruction == this.instruction &&
          other.urlImage == this.urlImage);
}

class FoodsCompanion extends UpdateCompanion<Food> {
  final Value<String> idmeal;
  final Value<String> title;
  final Value<String> area;
  final Value<String> category;
  final Value<String> instruction;
  final Value<String> urlImage;
  const FoodsCompanion({
    this.idmeal = const Value.absent(),
    this.title = const Value.absent(),
    this.area = const Value.absent(),
    this.category = const Value.absent(),
    this.instruction = const Value.absent(),
    this.urlImage = const Value.absent(),
  });
  FoodsCompanion.insert({
    required String idmeal,
    required String title,
    required String area,
    required String category,
    required String instruction,
    required String urlImage,
  })  : idmeal = Value(idmeal),
        title = Value(title),
        area = Value(area),
        category = Value(category),
        instruction = Value(instruction),
        urlImage = Value(urlImage);
  static Insertable<Food> custom({
    Expression<String>? idmeal,
    Expression<String>? title,
    Expression<String>? area,
    Expression<String>? category,
    Expression<String>? instruction,
    Expression<String>? urlImage,
  }) {
    return RawValuesInsertable({
      if (idmeal != null) 'idmeal': idmeal,
      if (title != null) 'title': title,
      if (area != null) 'area': area,
      if (category != null) 'category': category,
      if (instruction != null) 'instruction': instruction,
      if (urlImage != null) 'url_image': urlImage,
    });
  }

  FoodsCompanion copyWith(
      {Value<String>? idmeal,
      Value<String>? title,
      Value<String>? area,
      Value<String>? category,
      Value<String>? instruction,
      Value<String>? urlImage}) {
    return FoodsCompanion(
      idmeal: idmeal ?? this.idmeal,
      title: title ?? this.title,
      area: area ?? this.area,
      category: category ?? this.category,
      instruction: instruction ?? this.instruction,
      urlImage: urlImage ?? this.urlImage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idmeal.present) {
      map['idmeal'] = Variable<String>(idmeal.value);
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
    if (urlImage.present) {
      map['url_image'] = Variable<String>(urlImage.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoodsCompanion(')
          ..write('idmeal: $idmeal, ')
          ..write('title: $title, ')
          ..write('area: $area, ')
          ..write('category: $category, ')
          ..write('instruction: $instruction, ')
          ..write('urlImage: $urlImage')
          ..write(')'))
        .toString();
  }
}

class $FoodsTable extends Foods with TableInfo<$FoodsTable, Food> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FoodsTable(this._db, [this._alias]);
  final VerificationMeta _idmealMeta = const VerificationMeta('idmeal');
  late final GeneratedColumn<String?> idmeal = GeneratedColumn<String?>(
      'idmeal', aliasedName, false,
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
  final VerificationMeta _urlImageMeta = const VerificationMeta('urlImage');
  late final GeneratedColumn<String?> urlImage = GeneratedColumn<String?>(
      'url_image', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [idmeal, title, area, category, instruction, urlImage];
  @override
  String get aliasedName => _alias ?? 'foods';
  @override
  String get actualTableName => 'foods';
  @override
  VerificationContext validateIntegrity(Insertable<Food> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('idmeal')) {
      context.handle(_idmealMeta,
          idmeal.isAcceptableOrUnknown(data['idmeal']!, _idmealMeta));
    } else if (isInserting) {
      context.missing(_idmealMeta);
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
    if (data.containsKey('url_image')) {
      context.handle(_urlImageMeta,
          urlImage.isAcceptableOrUnknown(data['url_image']!, _urlImageMeta));
    } else if (isInserting) {
      context.missing(_urlImageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {idmeal, title, area, category, instruction};
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
