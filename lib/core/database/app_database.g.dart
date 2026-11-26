// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subtitleMeta = const VerificationMeta(
    'subtitle',
  );
  @override
  late final GeneratedColumn<String> subtitle = GeneratedColumn<String>(
    'subtitle',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageAssetMeta = const VerificationMeta(
    'imageAsset',
  );
  @override
  late final GeneratedColumn<String> imageAsset = GeneratedColumn<String>(
    'image_asset',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bannerTitleMeta = const VerificationMeta(
    'bannerTitle',
  );
  @override
  late final GeneratedColumn<String> bannerTitle = GeneratedColumn<String>(
    'banner_title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bannerSubtitleMeta = const VerificationMeta(
    'bannerSubtitle',
  );
  @override
  late final GeneratedColumn<String> bannerSubtitle = GeneratedColumn<String>(
    'banner_subtitle',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bannerBadgeMeta = const VerificationMeta(
    'bannerBadge',
  );
  @override
  late final GeneratedColumn<String> bannerBadge = GeneratedColumn<String>(
    'banner_badge',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bannerDiscountTextMeta =
      const VerificationMeta('bannerDiscountText');
  @override
  late final GeneratedColumn<String> bannerDiscountText =
      GeneratedColumn<String>(
        'banner_discount_text',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _isExploreFeaturedMeta = const VerificationMeta(
    'isExploreFeatured',
  );
  @override
  late final GeneratedColumn<bool> isExploreFeatured = GeneratedColumn<bool>(
    'is_explore_featured',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_explore_featured" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isTrendingMeta = const VerificationMeta(
    'isTrending',
  );
  @override
  late final GeneratedColumn<bool> isTrending = GeneratedColumn<bool>(
    'is_trending',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_trending" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    subtitle,
    imageAsset,
    bannerTitle,
    bannerSubtitle,
    bannerBadge,
    bannerDiscountText,
    sortOrder,
    isExploreFeatured,
    isTrending,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(
    Insertable<Category> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('subtitle')) {
      context.handle(
        _subtitleMeta,
        subtitle.isAcceptableOrUnknown(data['subtitle']!, _subtitleMeta),
      );
    } else if (isInserting) {
      context.missing(_subtitleMeta);
    }
    if (data.containsKey('image_asset')) {
      context.handle(
        _imageAssetMeta,
        imageAsset.isAcceptableOrUnknown(data['image_asset']!, _imageAssetMeta),
      );
    } else if (isInserting) {
      context.missing(_imageAssetMeta);
    }
    if (data.containsKey('banner_title')) {
      context.handle(
        _bannerTitleMeta,
        bannerTitle.isAcceptableOrUnknown(
          data['banner_title']!,
          _bannerTitleMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_bannerTitleMeta);
    }
    if (data.containsKey('banner_subtitle')) {
      context.handle(
        _bannerSubtitleMeta,
        bannerSubtitle.isAcceptableOrUnknown(
          data['banner_subtitle']!,
          _bannerSubtitleMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_bannerSubtitleMeta);
    }
    if (data.containsKey('banner_badge')) {
      context.handle(
        _bannerBadgeMeta,
        bannerBadge.isAcceptableOrUnknown(
          data['banner_badge']!,
          _bannerBadgeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_bannerBadgeMeta);
    }
    if (data.containsKey('banner_discount_text')) {
      context.handle(
        _bannerDiscountTextMeta,
        bannerDiscountText.isAcceptableOrUnknown(
          data['banner_discount_text']!,
          _bannerDiscountTextMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_bannerDiscountTextMeta);
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    if (data.containsKey('is_explore_featured')) {
      context.handle(
        _isExploreFeaturedMeta,
        isExploreFeatured.isAcceptableOrUnknown(
          data['is_explore_featured']!,
          _isExploreFeaturedMeta,
        ),
      );
    }
    if (data.containsKey('is_trending')) {
      context.handle(
        _isTrendingMeta,
        isTrending.isAcceptableOrUnknown(data['is_trending']!, _isTrendingMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      subtitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subtitle'],
      )!,
      imageAsset: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_asset'],
      )!,
      bannerTitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}banner_title'],
      )!,
      bannerSubtitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}banner_subtitle'],
      )!,
      bannerBadge: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}banner_badge'],
      )!,
      bannerDiscountText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}banner_discount_text'],
      )!,
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
      isExploreFeatured: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_explore_featured'],
      )!,
      isTrending: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_trending'],
      )!,
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final String id;
  final String name;
  final String subtitle;
  final String imageAsset;
  final String bannerTitle;
  final String bannerSubtitle;
  final String bannerBadge;
  final String bannerDiscountText;
  final int sortOrder;
  final bool isExploreFeatured;
  final bool isTrending;
  const Category({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.imageAsset,
    required this.bannerTitle,
    required this.bannerSubtitle,
    required this.bannerBadge,
    required this.bannerDiscountText,
    required this.sortOrder,
    required this.isExploreFeatured,
    required this.isTrending,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['subtitle'] = Variable<String>(subtitle);
    map['image_asset'] = Variable<String>(imageAsset);
    map['banner_title'] = Variable<String>(bannerTitle);
    map['banner_subtitle'] = Variable<String>(bannerSubtitle);
    map['banner_badge'] = Variable<String>(bannerBadge);
    map['banner_discount_text'] = Variable<String>(bannerDiscountText);
    map['sort_order'] = Variable<int>(sortOrder);
    map['is_explore_featured'] = Variable<bool>(isExploreFeatured);
    map['is_trending'] = Variable<bool>(isTrending);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      name: Value(name),
      subtitle: Value(subtitle),
      imageAsset: Value(imageAsset),
      bannerTitle: Value(bannerTitle),
      bannerSubtitle: Value(bannerSubtitle),
      bannerBadge: Value(bannerBadge),
      bannerDiscountText: Value(bannerDiscountText),
      sortOrder: Value(sortOrder),
      isExploreFeatured: Value(isExploreFeatured),
      isTrending: Value(isTrending),
    );
  }

  factory Category.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      subtitle: serializer.fromJson<String>(json['subtitle']),
      imageAsset: serializer.fromJson<String>(json['imageAsset']),
      bannerTitle: serializer.fromJson<String>(json['bannerTitle']),
      bannerSubtitle: serializer.fromJson<String>(json['bannerSubtitle']),
      bannerBadge: serializer.fromJson<String>(json['bannerBadge']),
      bannerDiscountText: serializer.fromJson<String>(
        json['bannerDiscountText'],
      ),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      isExploreFeatured: serializer.fromJson<bool>(json['isExploreFeatured']),
      isTrending: serializer.fromJson<bool>(json['isTrending']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'subtitle': serializer.toJson<String>(subtitle),
      'imageAsset': serializer.toJson<String>(imageAsset),
      'bannerTitle': serializer.toJson<String>(bannerTitle),
      'bannerSubtitle': serializer.toJson<String>(bannerSubtitle),
      'bannerBadge': serializer.toJson<String>(bannerBadge),
      'bannerDiscountText': serializer.toJson<String>(bannerDiscountText),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'isExploreFeatured': serializer.toJson<bool>(isExploreFeatured),
      'isTrending': serializer.toJson<bool>(isTrending),
    };
  }

  Category copyWith({
    String? id,
    String? name,
    String? subtitle,
    String? imageAsset,
    String? bannerTitle,
    String? bannerSubtitle,
    String? bannerBadge,
    String? bannerDiscountText,
    int? sortOrder,
    bool? isExploreFeatured,
    bool? isTrending,
  }) => Category(
    id: id ?? this.id,
    name: name ?? this.name,
    subtitle: subtitle ?? this.subtitle,
    imageAsset: imageAsset ?? this.imageAsset,
    bannerTitle: bannerTitle ?? this.bannerTitle,
    bannerSubtitle: bannerSubtitle ?? this.bannerSubtitle,
    bannerBadge: bannerBadge ?? this.bannerBadge,
    bannerDiscountText: bannerDiscountText ?? this.bannerDiscountText,
    sortOrder: sortOrder ?? this.sortOrder,
    isExploreFeatured: isExploreFeatured ?? this.isExploreFeatured,
    isTrending: isTrending ?? this.isTrending,
  );
  Category copyWithCompanion(CategoriesCompanion data) {
    return Category(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      subtitle: data.subtitle.present ? data.subtitle.value : this.subtitle,
      imageAsset: data.imageAsset.present
          ? data.imageAsset.value
          : this.imageAsset,
      bannerTitle: data.bannerTitle.present
          ? data.bannerTitle.value
          : this.bannerTitle,
      bannerSubtitle: data.bannerSubtitle.present
          ? data.bannerSubtitle.value
          : this.bannerSubtitle,
      bannerBadge: data.bannerBadge.present
          ? data.bannerBadge.value
          : this.bannerBadge,
      bannerDiscountText: data.bannerDiscountText.present
          ? data.bannerDiscountText.value
          : this.bannerDiscountText,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
      isExploreFeatured: data.isExploreFeatured.present
          ? data.isExploreFeatured.value
          : this.isExploreFeatured,
      isTrending: data.isTrending.present
          ? data.isTrending.value
          : this.isTrending,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('subtitle: $subtitle, ')
          ..write('imageAsset: $imageAsset, ')
          ..write('bannerTitle: $bannerTitle, ')
          ..write('bannerSubtitle: $bannerSubtitle, ')
          ..write('bannerBadge: $bannerBadge, ')
          ..write('bannerDiscountText: $bannerDiscountText, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('isExploreFeatured: $isExploreFeatured, ')
          ..write('isTrending: $isTrending')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    subtitle,
    imageAsset,
    bannerTitle,
    bannerSubtitle,
    bannerBadge,
    bannerDiscountText,
    sortOrder,
    isExploreFeatured,
    isTrending,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.name == this.name &&
          other.subtitle == this.subtitle &&
          other.imageAsset == this.imageAsset &&
          other.bannerTitle == this.bannerTitle &&
          other.bannerSubtitle == this.bannerSubtitle &&
          other.bannerBadge == this.bannerBadge &&
          other.bannerDiscountText == this.bannerDiscountText &&
          other.sortOrder == this.sortOrder &&
          other.isExploreFeatured == this.isExploreFeatured &&
          other.isTrending == this.isTrending);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> subtitle;
  final Value<String> imageAsset;
  final Value<String> bannerTitle;
  final Value<String> bannerSubtitle;
  final Value<String> bannerBadge;
  final Value<String> bannerDiscountText;
  final Value<int> sortOrder;
  final Value<bool> isExploreFeatured;
  final Value<bool> isTrending;
  final Value<int> rowid;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.imageAsset = const Value.absent(),
    this.bannerTitle = const Value.absent(),
    this.bannerSubtitle = const Value.absent(),
    this.bannerBadge = const Value.absent(),
    this.bannerDiscountText = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.isExploreFeatured = const Value.absent(),
    this.isTrending = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CategoriesCompanion.insert({
    required String id,
    required String name,
    required String subtitle,
    required String imageAsset,
    required String bannerTitle,
    required String bannerSubtitle,
    required String bannerBadge,
    required String bannerDiscountText,
    this.sortOrder = const Value.absent(),
    this.isExploreFeatured = const Value.absent(),
    this.isTrending = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       subtitle = Value(subtitle),
       imageAsset = Value(imageAsset),
       bannerTitle = Value(bannerTitle),
       bannerSubtitle = Value(bannerSubtitle),
       bannerBadge = Value(bannerBadge),
       bannerDiscountText = Value(bannerDiscountText);
  static Insertable<Category> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? subtitle,
    Expression<String>? imageAsset,
    Expression<String>? bannerTitle,
    Expression<String>? bannerSubtitle,
    Expression<String>? bannerBadge,
    Expression<String>? bannerDiscountText,
    Expression<int>? sortOrder,
    Expression<bool>? isExploreFeatured,
    Expression<bool>? isTrending,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (subtitle != null) 'subtitle': subtitle,
      if (imageAsset != null) 'image_asset': imageAsset,
      if (bannerTitle != null) 'banner_title': bannerTitle,
      if (bannerSubtitle != null) 'banner_subtitle': bannerSubtitle,
      if (bannerBadge != null) 'banner_badge': bannerBadge,
      if (bannerDiscountText != null)
        'banner_discount_text': bannerDiscountText,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (isExploreFeatured != null) 'is_explore_featured': isExploreFeatured,
      if (isTrending != null) 'is_trending': isTrending,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CategoriesCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? subtitle,
    Value<String>? imageAsset,
    Value<String>? bannerTitle,
    Value<String>? bannerSubtitle,
    Value<String>? bannerBadge,
    Value<String>? bannerDiscountText,
    Value<int>? sortOrder,
    Value<bool>? isExploreFeatured,
    Value<bool>? isTrending,
    Value<int>? rowid,
  }) {
    return CategoriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      subtitle: subtitle ?? this.subtitle,
      imageAsset: imageAsset ?? this.imageAsset,
      bannerTitle: bannerTitle ?? this.bannerTitle,
      bannerSubtitle: bannerSubtitle ?? this.bannerSubtitle,
      bannerBadge: bannerBadge ?? this.bannerBadge,
      bannerDiscountText: bannerDiscountText ?? this.bannerDiscountText,
      sortOrder: sortOrder ?? this.sortOrder,
      isExploreFeatured: isExploreFeatured ?? this.isExploreFeatured,
      isTrending: isTrending ?? this.isTrending,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (subtitle.present) {
      map['subtitle'] = Variable<String>(subtitle.value);
    }
    if (imageAsset.present) {
      map['image_asset'] = Variable<String>(imageAsset.value);
    }
    if (bannerTitle.present) {
      map['banner_title'] = Variable<String>(bannerTitle.value);
    }
    if (bannerSubtitle.present) {
      map['banner_subtitle'] = Variable<String>(bannerSubtitle.value);
    }
    if (bannerBadge.present) {
      map['banner_badge'] = Variable<String>(bannerBadge.value);
    }
    if (bannerDiscountText.present) {
      map['banner_discount_text'] = Variable<String>(bannerDiscountText.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (isExploreFeatured.present) {
      map['is_explore_featured'] = Variable<bool>(isExploreFeatured.value);
    }
    if (isTrending.present) {
      map['is_trending'] = Variable<bool>(isTrending.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('subtitle: $subtitle, ')
          ..write('imageAsset: $imageAsset, ')
          ..write('bannerTitle: $bannerTitle, ')
          ..write('bannerSubtitle: $bannerSubtitle, ')
          ..write('bannerBadge: $bannerBadge, ')
          ..write('bannerDiscountText: $bannerDiscountText, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('isExploreFeatured: $isExploreFeatured, ')
          ..write('isTrending: $isTrending, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BrandsTable extends Brands with TableInfo<$BrandsTable, Brand> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BrandsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subtitleMeta = const VerificationMeta(
    'subtitle',
  );
  @override
  late final GeneratedColumn<String> subtitle = GeneratedColumn<String>(
    'subtitle',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bgColorHexMeta = const VerificationMeta(
    'bgColorHex',
  );
  @override
  late final GeneratedColumn<int> bgColorHex = GeneratedColumn<int>(
    'bg_color_hex',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _textColorHexMeta = const VerificationMeta(
    'textColorHex',
  );
  @override
  late final GeneratedColumn<int> textColorHex = GeneratedColumn<int>(
    'text_color_hex',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    subtitle,
    bgColorHex,
    textColorHex,
    sortOrder,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'brands';
  @override
  VerificationContext validateIntegrity(
    Insertable<Brand> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('subtitle')) {
      context.handle(
        _subtitleMeta,
        subtitle.isAcceptableOrUnknown(data['subtitle']!, _subtitleMeta),
      );
    } else if (isInserting) {
      context.missing(_subtitleMeta);
    }
    if (data.containsKey('bg_color_hex')) {
      context.handle(
        _bgColorHexMeta,
        bgColorHex.isAcceptableOrUnknown(
          data['bg_color_hex']!,
          _bgColorHexMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_bgColorHexMeta);
    }
    if (data.containsKey('text_color_hex')) {
      context.handle(
        _textColorHexMeta,
        textColorHex.isAcceptableOrUnknown(
          data['text_color_hex']!,
          _textColorHexMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_textColorHexMeta);
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Brand map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Brand(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      subtitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subtitle'],
      )!,
      bgColorHex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}bg_color_hex'],
      )!,
      textColorHex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}text_color_hex'],
      )!,
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
    );
  }

  @override
  $BrandsTable createAlias(String alias) {
    return $BrandsTable(attachedDatabase, alias);
  }
}

class Brand extends DataClass implements Insertable<Brand> {
  final String id;
  final String name;
  final String subtitle;
  final int bgColorHex;
  final int textColorHex;
  final int sortOrder;
  const Brand({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.bgColorHex,
    required this.textColorHex,
    required this.sortOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['subtitle'] = Variable<String>(subtitle);
    map['bg_color_hex'] = Variable<int>(bgColorHex);
    map['text_color_hex'] = Variable<int>(textColorHex);
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  BrandsCompanion toCompanion(bool nullToAbsent) {
    return BrandsCompanion(
      id: Value(id),
      name: Value(name),
      subtitle: Value(subtitle),
      bgColorHex: Value(bgColorHex),
      textColorHex: Value(textColorHex),
      sortOrder: Value(sortOrder),
    );
  }

  factory Brand.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Brand(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      subtitle: serializer.fromJson<String>(json['subtitle']),
      bgColorHex: serializer.fromJson<int>(json['bgColorHex']),
      textColorHex: serializer.fromJson<int>(json['textColorHex']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'subtitle': serializer.toJson<String>(subtitle),
      'bgColorHex': serializer.toJson<int>(bgColorHex),
      'textColorHex': serializer.toJson<int>(textColorHex),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  Brand copyWith({
    String? id,
    String? name,
    String? subtitle,
    int? bgColorHex,
    int? textColorHex,
    int? sortOrder,
  }) => Brand(
    id: id ?? this.id,
    name: name ?? this.name,
    subtitle: subtitle ?? this.subtitle,
    bgColorHex: bgColorHex ?? this.bgColorHex,
    textColorHex: textColorHex ?? this.textColorHex,
    sortOrder: sortOrder ?? this.sortOrder,
  );
  Brand copyWithCompanion(BrandsCompanion data) {
    return Brand(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      subtitle: data.subtitle.present ? data.subtitle.value : this.subtitle,
      bgColorHex: data.bgColorHex.present
          ? data.bgColorHex.value
          : this.bgColorHex,
      textColorHex: data.textColorHex.present
          ? data.textColorHex.value
          : this.textColorHex,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Brand(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('subtitle: $subtitle, ')
          ..write('bgColorHex: $bgColorHex, ')
          ..write('textColorHex: $textColorHex, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, subtitle, bgColorHex, textColorHex, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Brand &&
          other.id == this.id &&
          other.name == this.name &&
          other.subtitle == this.subtitle &&
          other.bgColorHex == this.bgColorHex &&
          other.textColorHex == this.textColorHex &&
          other.sortOrder == this.sortOrder);
}

class BrandsCompanion extends UpdateCompanion<Brand> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> subtitle;
  final Value<int> bgColorHex;
  final Value<int> textColorHex;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const BrandsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.bgColorHex = const Value.absent(),
    this.textColorHex = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BrandsCompanion.insert({
    required String id,
    required String name,
    required String subtitle,
    required int bgColorHex,
    required int textColorHex,
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       subtitle = Value(subtitle),
       bgColorHex = Value(bgColorHex),
       textColorHex = Value(textColorHex);
  static Insertable<Brand> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? subtitle,
    Expression<int>? bgColorHex,
    Expression<int>? textColorHex,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (subtitle != null) 'subtitle': subtitle,
      if (bgColorHex != null) 'bg_color_hex': bgColorHex,
      if (textColorHex != null) 'text_color_hex': textColorHex,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BrandsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? subtitle,
    Value<int>? bgColorHex,
    Value<int>? textColorHex,
    Value<int>? sortOrder,
    Value<int>? rowid,
  }) {
    return BrandsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      subtitle: subtitle ?? this.subtitle,
      bgColorHex: bgColorHex ?? this.bgColorHex,
      textColorHex: textColorHex ?? this.textColorHex,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (subtitle.present) {
      map['subtitle'] = Variable<String>(subtitle.value);
    }
    if (bgColorHex.present) {
      map['bg_color_hex'] = Variable<int>(bgColorHex.value);
    }
    if (textColorHex.present) {
      map['text_color_hex'] = Variable<int>(textColorHex.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BrandsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('subtitle: $subtitle, ')
          ..write('bgColorHex: $bgColorHex, ')
          ..write('textColorHex: $textColorHex, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subtitleMeta = const VerificationMeta(
    'subtitle',
  );
  @override
  late final GeneratedColumn<String> subtitle = GeneratedColumn<String>(
    'subtitle',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<String> categoryId = GeneratedColumn<String>(
    'category_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES categories (id)',
    ),
  );
  static const VerificationMeta _brandIdMeta = const VerificationMeta(
    'brandId',
  );
  @override
  late final GeneratedColumn<String> brandId = GeneratedColumn<String>(
    'brand_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES brands (id)',
    ),
  );
  static const VerificationMeta _farmLabelMeta = const VerificationMeta(
    'farmLabel',
  );
  @override
  late final GeneratedColumn<String> farmLabel = GeneratedColumn<String>(
    'farm_label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitLabelMeta = const VerificationMeta(
    'unitLabel',
  );
  @override
  late final GeneratedColumn<String> unitLabel = GeneratedColumn<String>(
    'unit_label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _pricePiastersMeta = const VerificationMeta(
    'pricePiasters',
  );
  @override
  late final GeneratedColumn<int> pricePiasters = GeneratedColumn<int>(
    'price_piasters',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _originalPricePiastersMeta =
      const VerificationMeta('originalPricePiasters');
  @override
  late final GeneratedColumn<int> originalPricePiasters = GeneratedColumn<int>(
    'original_price_piasters',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _badgeTextMeta = const VerificationMeta(
    'badgeText',
  );
  @override
  late final GeneratedColumn<String> badgeText = GeneratedColumn<String>(
    'badge_text',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _badgeToneMeta = const VerificationMeta(
    'badgeTone',
  );
  @override
  late final GeneratedColumn<String> badgeTone = GeneratedColumn<String>(
    'badge_tone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('primary'),
  );
  static const VerificationMeta _imageAssetMeta = const VerificationMeta(
    'imageAsset',
  );
  @override
  late final GeneratedColumn<String> imageAsset = GeneratedColumn<String>(
    'image_asset',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<double> rating = GeneratedColumn<double>(
    'rating',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(4.8),
  );
  static const VerificationMeta _reviewCountMeta = const VerificationMeta(
    'reviewCount',
  );
  @override
  late final GeneratedColumn<int> reviewCount = GeneratedColumn<int>(
    'review_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _stockCountMeta = const VerificationMeta(
    'stockCount',
  );
  @override
  late final GeneratedColumn<int> stockCount = GeneratedColumn<int>(
    'stock_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(50),
  );
  static const VerificationMeta _isSpotlightMeta = const VerificationMeta(
    'isSpotlight',
  );
  @override
  late final GeneratedColumn<bool> isSpotlight = GeneratedColumn<bool>(
    'is_spotlight',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_spotlight" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isSpecialOfferMeta = const VerificationMeta(
    'isSpecialOffer',
  );
  @override
  late final GeneratedColumn<bool> isSpecialOffer = GeneratedColumn<bool>(
    'is_special_offer',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_special_offer" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isNewArrivalMeta = const VerificationMeta(
    'isNewArrival',
  );
  @override
  late final GeneratedColumn<bool> isNewArrival = GeneratedColumn<bool>(
    'is_new_arrival',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_new_arrival" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isPopularMeta = const VerificationMeta(
    'isPopular',
  );
  @override
  late final GeneratedColumn<bool> isPopular = GeneratedColumn<bool>(
    'is_popular',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_popular" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isPairingSuggestionMeta =
      const VerificationMeta('isPairingSuggestion');
  @override
  late final GeneratedColumn<bool> isPairingSuggestion = GeneratedColumn<bool>(
    'is_pairing_suggestion',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_pairing_suggestion" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    subtitle,
    description,
    categoryId,
    brandId,
    farmLabel,
    unitLabel,
    pricePiasters,
    originalPricePiasters,
    badgeText,
    badgeTone,
    imageAsset,
    rating,
    reviewCount,
    stockCount,
    isSpotlight,
    isSpecialOffer,
    isNewArrival,
    isPopular,
    isPairingSuggestion,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(
    Insertable<Product> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('subtitle')) {
      context.handle(
        _subtitleMeta,
        subtitle.isAcceptableOrUnknown(data['subtitle']!, _subtitleMeta),
      );
    } else if (isInserting) {
      context.missing(_subtitleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('brand_id')) {
      context.handle(
        _brandIdMeta,
        brandId.isAcceptableOrUnknown(data['brand_id']!, _brandIdMeta),
      );
    } else if (isInserting) {
      context.missing(_brandIdMeta);
    }
    if (data.containsKey('farm_label')) {
      context.handle(
        _farmLabelMeta,
        farmLabel.isAcceptableOrUnknown(data['farm_label']!, _farmLabelMeta),
      );
    } else if (isInserting) {
      context.missing(_farmLabelMeta);
    }
    if (data.containsKey('unit_label')) {
      context.handle(
        _unitLabelMeta,
        unitLabel.isAcceptableOrUnknown(data['unit_label']!, _unitLabelMeta),
      );
    } else if (isInserting) {
      context.missing(_unitLabelMeta);
    }
    if (data.containsKey('price_piasters')) {
      context.handle(
        _pricePiastersMeta,
        pricePiasters.isAcceptableOrUnknown(
          data['price_piasters']!,
          _pricePiastersMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_pricePiastersMeta);
    }
    if (data.containsKey('original_price_piasters')) {
      context.handle(
        _originalPricePiastersMeta,
        originalPricePiasters.isAcceptableOrUnknown(
          data['original_price_piasters']!,
          _originalPricePiastersMeta,
        ),
      );
    }
    if (data.containsKey('badge_text')) {
      context.handle(
        _badgeTextMeta,
        badgeText.isAcceptableOrUnknown(data['badge_text']!, _badgeTextMeta),
      );
    }
    if (data.containsKey('badge_tone')) {
      context.handle(
        _badgeToneMeta,
        badgeTone.isAcceptableOrUnknown(data['badge_tone']!, _badgeToneMeta),
      );
    }
    if (data.containsKey('image_asset')) {
      context.handle(
        _imageAssetMeta,
        imageAsset.isAcceptableOrUnknown(data['image_asset']!, _imageAssetMeta),
      );
    } else if (isInserting) {
      context.missing(_imageAssetMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(
        _ratingMeta,
        rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta),
      );
    }
    if (data.containsKey('review_count')) {
      context.handle(
        _reviewCountMeta,
        reviewCount.isAcceptableOrUnknown(
          data['review_count']!,
          _reviewCountMeta,
        ),
      );
    }
    if (data.containsKey('stock_count')) {
      context.handle(
        _stockCountMeta,
        stockCount.isAcceptableOrUnknown(data['stock_count']!, _stockCountMeta),
      );
    }
    if (data.containsKey('is_spotlight')) {
      context.handle(
        _isSpotlightMeta,
        isSpotlight.isAcceptableOrUnknown(
          data['is_spotlight']!,
          _isSpotlightMeta,
        ),
      );
    }
    if (data.containsKey('is_special_offer')) {
      context.handle(
        _isSpecialOfferMeta,
        isSpecialOffer.isAcceptableOrUnknown(
          data['is_special_offer']!,
          _isSpecialOfferMeta,
        ),
      );
    }
    if (data.containsKey('is_new_arrival')) {
      context.handle(
        _isNewArrivalMeta,
        isNewArrival.isAcceptableOrUnknown(
          data['is_new_arrival']!,
          _isNewArrivalMeta,
        ),
      );
    }
    if (data.containsKey('is_popular')) {
      context.handle(
        _isPopularMeta,
        isPopular.isAcceptableOrUnknown(data['is_popular']!, _isPopularMeta),
      );
    }
    if (data.containsKey('is_pairing_suggestion')) {
      context.handle(
        _isPairingSuggestionMeta,
        isPairingSuggestion.isAcceptableOrUnknown(
          data['is_pairing_suggestion']!,
          _isPairingSuggestionMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Product(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      subtitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subtitle'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category_id'],
      )!,
      brandId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}brand_id'],
      )!,
      farmLabel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}farm_label'],
      )!,
      unitLabel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unit_label'],
      )!,
      pricePiasters: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}price_piasters'],
      )!,
      originalPricePiasters: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}original_price_piasters'],
      ),
      badgeText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}badge_text'],
      ),
      badgeTone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}badge_tone'],
      )!,
      imageAsset: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_asset'],
      )!,
      rating: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}rating'],
      )!,
      reviewCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}review_count'],
      )!,
      stockCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}stock_count'],
      )!,
      isSpotlight: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_spotlight'],
      )!,
      isSpecialOffer: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_special_offer'],
      )!,
      isNewArrival: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_new_arrival'],
      )!,
      isPopular: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_popular'],
      )!,
      isPairingSuggestion: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_pairing_suggestion'],
      )!,
    );
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }
}

class Product extends DataClass implements Insertable<Product> {
  final String id;
  final String name;
  final String subtitle;
  final String description;
  final String categoryId;
  final String brandId;
  final String farmLabel;
  final String unitLabel;
  final int pricePiasters;
  final int? originalPricePiasters;
  final String? badgeText;
  final String badgeTone;
  final String imageAsset;
  final double rating;
  final int reviewCount;
  final int stockCount;
  final bool isSpotlight;
  final bool isSpecialOffer;
  final bool isNewArrival;
  final bool isPopular;
  final bool isPairingSuggestion;
  const Product({
    required this.id,
    required this.name,
    required this.subtitle,
    required this.description,
    required this.categoryId,
    required this.brandId,
    required this.farmLabel,
    required this.unitLabel,
    required this.pricePiasters,
    this.originalPricePiasters,
    this.badgeText,
    required this.badgeTone,
    required this.imageAsset,
    required this.rating,
    required this.reviewCount,
    required this.stockCount,
    required this.isSpotlight,
    required this.isSpecialOffer,
    required this.isNewArrival,
    required this.isPopular,
    required this.isPairingSuggestion,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['subtitle'] = Variable<String>(subtitle);
    map['description'] = Variable<String>(description);
    map['category_id'] = Variable<String>(categoryId);
    map['brand_id'] = Variable<String>(brandId);
    map['farm_label'] = Variable<String>(farmLabel);
    map['unit_label'] = Variable<String>(unitLabel);
    map['price_piasters'] = Variable<int>(pricePiasters);
    if (!nullToAbsent || originalPricePiasters != null) {
      map['original_price_piasters'] = Variable<int>(originalPricePiasters);
    }
    if (!nullToAbsent || badgeText != null) {
      map['badge_text'] = Variable<String>(badgeText);
    }
    map['badge_tone'] = Variable<String>(badgeTone);
    map['image_asset'] = Variable<String>(imageAsset);
    map['rating'] = Variable<double>(rating);
    map['review_count'] = Variable<int>(reviewCount);
    map['stock_count'] = Variable<int>(stockCount);
    map['is_spotlight'] = Variable<bool>(isSpotlight);
    map['is_special_offer'] = Variable<bool>(isSpecialOffer);
    map['is_new_arrival'] = Variable<bool>(isNewArrival);
    map['is_popular'] = Variable<bool>(isPopular);
    map['is_pairing_suggestion'] = Variable<bool>(isPairingSuggestion);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      name: Value(name),
      subtitle: Value(subtitle),
      description: Value(description),
      categoryId: Value(categoryId),
      brandId: Value(brandId),
      farmLabel: Value(farmLabel),
      unitLabel: Value(unitLabel),
      pricePiasters: Value(pricePiasters),
      originalPricePiasters: originalPricePiasters == null && nullToAbsent
          ? const Value.absent()
          : Value(originalPricePiasters),
      badgeText: badgeText == null && nullToAbsent
          ? const Value.absent()
          : Value(badgeText),
      badgeTone: Value(badgeTone),
      imageAsset: Value(imageAsset),
      rating: Value(rating),
      reviewCount: Value(reviewCount),
      stockCount: Value(stockCount),
      isSpotlight: Value(isSpotlight),
      isSpecialOffer: Value(isSpecialOffer),
      isNewArrival: Value(isNewArrival),
      isPopular: Value(isPopular),
      isPairingSuggestion: Value(isPairingSuggestion),
    );
  }

  factory Product.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      subtitle: serializer.fromJson<String>(json['subtitle']),
      description: serializer.fromJson<String>(json['description']),
      categoryId: serializer.fromJson<String>(json['categoryId']),
      brandId: serializer.fromJson<String>(json['brandId']),
      farmLabel: serializer.fromJson<String>(json['farmLabel']),
      unitLabel: serializer.fromJson<String>(json['unitLabel']),
      pricePiasters: serializer.fromJson<int>(json['pricePiasters']),
      originalPricePiasters: serializer.fromJson<int?>(
        json['originalPricePiasters'],
      ),
      badgeText: serializer.fromJson<String?>(json['badgeText']),
      badgeTone: serializer.fromJson<String>(json['badgeTone']),
      imageAsset: serializer.fromJson<String>(json['imageAsset']),
      rating: serializer.fromJson<double>(json['rating']),
      reviewCount: serializer.fromJson<int>(json['reviewCount']),
      stockCount: serializer.fromJson<int>(json['stockCount']),
      isSpotlight: serializer.fromJson<bool>(json['isSpotlight']),
      isSpecialOffer: serializer.fromJson<bool>(json['isSpecialOffer']),
      isNewArrival: serializer.fromJson<bool>(json['isNewArrival']),
      isPopular: serializer.fromJson<bool>(json['isPopular']),
      isPairingSuggestion: serializer.fromJson<bool>(
        json['isPairingSuggestion'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'subtitle': serializer.toJson<String>(subtitle),
      'description': serializer.toJson<String>(description),
      'categoryId': serializer.toJson<String>(categoryId),
      'brandId': serializer.toJson<String>(brandId),
      'farmLabel': serializer.toJson<String>(farmLabel),
      'unitLabel': serializer.toJson<String>(unitLabel),
      'pricePiasters': serializer.toJson<int>(pricePiasters),
      'originalPricePiasters': serializer.toJson<int?>(originalPricePiasters),
      'badgeText': serializer.toJson<String?>(badgeText),
      'badgeTone': serializer.toJson<String>(badgeTone),
      'imageAsset': serializer.toJson<String>(imageAsset),
      'rating': serializer.toJson<double>(rating),
      'reviewCount': serializer.toJson<int>(reviewCount),
      'stockCount': serializer.toJson<int>(stockCount),
      'isSpotlight': serializer.toJson<bool>(isSpotlight),
      'isSpecialOffer': serializer.toJson<bool>(isSpecialOffer),
      'isNewArrival': serializer.toJson<bool>(isNewArrival),
      'isPopular': serializer.toJson<bool>(isPopular),
      'isPairingSuggestion': serializer.toJson<bool>(isPairingSuggestion),
    };
  }

  Product copyWith({
    String? id,
    String? name,
    String? subtitle,
    String? description,
    String? categoryId,
    String? brandId,
    String? farmLabel,
    String? unitLabel,
    int? pricePiasters,
    Value<int?> originalPricePiasters = const Value.absent(),
    Value<String?> badgeText = const Value.absent(),
    String? badgeTone,
    String? imageAsset,
    double? rating,
    int? reviewCount,
    int? stockCount,
    bool? isSpotlight,
    bool? isSpecialOffer,
    bool? isNewArrival,
    bool? isPopular,
    bool? isPairingSuggestion,
  }) => Product(
    id: id ?? this.id,
    name: name ?? this.name,
    subtitle: subtitle ?? this.subtitle,
    description: description ?? this.description,
    categoryId: categoryId ?? this.categoryId,
    brandId: brandId ?? this.brandId,
    farmLabel: farmLabel ?? this.farmLabel,
    unitLabel: unitLabel ?? this.unitLabel,
    pricePiasters: pricePiasters ?? this.pricePiasters,
    originalPricePiasters: originalPricePiasters.present
        ? originalPricePiasters.value
        : this.originalPricePiasters,
    badgeText: badgeText.present ? badgeText.value : this.badgeText,
    badgeTone: badgeTone ?? this.badgeTone,
    imageAsset: imageAsset ?? this.imageAsset,
    rating: rating ?? this.rating,
    reviewCount: reviewCount ?? this.reviewCount,
    stockCount: stockCount ?? this.stockCount,
    isSpotlight: isSpotlight ?? this.isSpotlight,
    isSpecialOffer: isSpecialOffer ?? this.isSpecialOffer,
    isNewArrival: isNewArrival ?? this.isNewArrival,
    isPopular: isPopular ?? this.isPopular,
    isPairingSuggestion: isPairingSuggestion ?? this.isPairingSuggestion,
  );
  Product copyWithCompanion(ProductsCompanion data) {
    return Product(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      subtitle: data.subtitle.present ? data.subtitle.value : this.subtitle,
      description: data.description.present
          ? data.description.value
          : this.description,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
      brandId: data.brandId.present ? data.brandId.value : this.brandId,
      farmLabel: data.farmLabel.present ? data.farmLabel.value : this.farmLabel,
      unitLabel: data.unitLabel.present ? data.unitLabel.value : this.unitLabel,
      pricePiasters: data.pricePiasters.present
          ? data.pricePiasters.value
          : this.pricePiasters,
      originalPricePiasters: data.originalPricePiasters.present
          ? data.originalPricePiasters.value
          : this.originalPricePiasters,
      badgeText: data.badgeText.present ? data.badgeText.value : this.badgeText,
      badgeTone: data.badgeTone.present ? data.badgeTone.value : this.badgeTone,
      imageAsset: data.imageAsset.present
          ? data.imageAsset.value
          : this.imageAsset,
      rating: data.rating.present ? data.rating.value : this.rating,
      reviewCount: data.reviewCount.present
          ? data.reviewCount.value
          : this.reviewCount,
      stockCount: data.stockCount.present
          ? data.stockCount.value
          : this.stockCount,
      isSpotlight: data.isSpotlight.present
          ? data.isSpotlight.value
          : this.isSpotlight,
      isSpecialOffer: data.isSpecialOffer.present
          ? data.isSpecialOffer.value
          : this.isSpecialOffer,
      isNewArrival: data.isNewArrival.present
          ? data.isNewArrival.value
          : this.isNewArrival,
      isPopular: data.isPopular.present ? data.isPopular.value : this.isPopular,
      isPairingSuggestion: data.isPairingSuggestion.present
          ? data.isPairingSuggestion.value
          : this.isPairingSuggestion,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('subtitle: $subtitle, ')
          ..write('description: $description, ')
          ..write('categoryId: $categoryId, ')
          ..write('brandId: $brandId, ')
          ..write('farmLabel: $farmLabel, ')
          ..write('unitLabel: $unitLabel, ')
          ..write('pricePiasters: $pricePiasters, ')
          ..write('originalPricePiasters: $originalPricePiasters, ')
          ..write('badgeText: $badgeText, ')
          ..write('badgeTone: $badgeTone, ')
          ..write('imageAsset: $imageAsset, ')
          ..write('rating: $rating, ')
          ..write('reviewCount: $reviewCount, ')
          ..write('stockCount: $stockCount, ')
          ..write('isSpotlight: $isSpotlight, ')
          ..write('isSpecialOffer: $isSpecialOffer, ')
          ..write('isNewArrival: $isNewArrival, ')
          ..write('isPopular: $isPopular, ')
          ..write('isPairingSuggestion: $isPairingSuggestion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    name,
    subtitle,
    description,
    categoryId,
    brandId,
    farmLabel,
    unitLabel,
    pricePiasters,
    originalPricePiasters,
    badgeText,
    badgeTone,
    imageAsset,
    rating,
    reviewCount,
    stockCount,
    isSpotlight,
    isSpecialOffer,
    isNewArrival,
    isPopular,
    isPairingSuggestion,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.name == this.name &&
          other.subtitle == this.subtitle &&
          other.description == this.description &&
          other.categoryId == this.categoryId &&
          other.brandId == this.brandId &&
          other.farmLabel == this.farmLabel &&
          other.unitLabel == this.unitLabel &&
          other.pricePiasters == this.pricePiasters &&
          other.originalPricePiasters == this.originalPricePiasters &&
          other.badgeText == this.badgeText &&
          other.badgeTone == this.badgeTone &&
          other.imageAsset == this.imageAsset &&
          other.rating == this.rating &&
          other.reviewCount == this.reviewCount &&
          other.stockCount == this.stockCount &&
          other.isSpotlight == this.isSpotlight &&
          other.isSpecialOffer == this.isSpecialOffer &&
          other.isNewArrival == this.isNewArrival &&
          other.isPopular == this.isPopular &&
          other.isPairingSuggestion == this.isPairingSuggestion);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> subtitle;
  final Value<String> description;
  final Value<String> categoryId;
  final Value<String> brandId;
  final Value<String> farmLabel;
  final Value<String> unitLabel;
  final Value<int> pricePiasters;
  final Value<int?> originalPricePiasters;
  final Value<String?> badgeText;
  final Value<String> badgeTone;
  final Value<String> imageAsset;
  final Value<double> rating;
  final Value<int> reviewCount;
  final Value<int> stockCount;
  final Value<bool> isSpotlight;
  final Value<bool> isSpecialOffer;
  final Value<bool> isNewArrival;
  final Value<bool> isPopular;
  final Value<bool> isPairingSuggestion;
  final Value<int> rowid;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.description = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.brandId = const Value.absent(),
    this.farmLabel = const Value.absent(),
    this.unitLabel = const Value.absent(),
    this.pricePiasters = const Value.absent(),
    this.originalPricePiasters = const Value.absent(),
    this.badgeText = const Value.absent(),
    this.badgeTone = const Value.absent(),
    this.imageAsset = const Value.absent(),
    this.rating = const Value.absent(),
    this.reviewCount = const Value.absent(),
    this.stockCount = const Value.absent(),
    this.isSpotlight = const Value.absent(),
    this.isSpecialOffer = const Value.absent(),
    this.isNewArrival = const Value.absent(),
    this.isPopular = const Value.absent(),
    this.isPairingSuggestion = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductsCompanion.insert({
    required String id,
    required String name,
    required String subtitle,
    required String description,
    required String categoryId,
    required String brandId,
    required String farmLabel,
    required String unitLabel,
    required int pricePiasters,
    this.originalPricePiasters = const Value.absent(),
    this.badgeText = const Value.absent(),
    this.badgeTone = const Value.absent(),
    required String imageAsset,
    this.rating = const Value.absent(),
    this.reviewCount = const Value.absent(),
    this.stockCount = const Value.absent(),
    this.isSpotlight = const Value.absent(),
    this.isSpecialOffer = const Value.absent(),
    this.isNewArrival = const Value.absent(),
    this.isPopular = const Value.absent(),
    this.isPairingSuggestion = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       subtitle = Value(subtitle),
       description = Value(description),
       categoryId = Value(categoryId),
       brandId = Value(brandId),
       farmLabel = Value(farmLabel),
       unitLabel = Value(unitLabel),
       pricePiasters = Value(pricePiasters),
       imageAsset = Value(imageAsset);
  static Insertable<Product> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? subtitle,
    Expression<String>? description,
    Expression<String>? categoryId,
    Expression<String>? brandId,
    Expression<String>? farmLabel,
    Expression<String>? unitLabel,
    Expression<int>? pricePiasters,
    Expression<int>? originalPricePiasters,
    Expression<String>? badgeText,
    Expression<String>? badgeTone,
    Expression<String>? imageAsset,
    Expression<double>? rating,
    Expression<int>? reviewCount,
    Expression<int>? stockCount,
    Expression<bool>? isSpotlight,
    Expression<bool>? isSpecialOffer,
    Expression<bool>? isNewArrival,
    Expression<bool>? isPopular,
    Expression<bool>? isPairingSuggestion,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (subtitle != null) 'subtitle': subtitle,
      if (description != null) 'description': description,
      if (categoryId != null) 'category_id': categoryId,
      if (brandId != null) 'brand_id': brandId,
      if (farmLabel != null) 'farm_label': farmLabel,
      if (unitLabel != null) 'unit_label': unitLabel,
      if (pricePiasters != null) 'price_piasters': pricePiasters,
      if (originalPricePiasters != null)
        'original_price_piasters': originalPricePiasters,
      if (badgeText != null) 'badge_text': badgeText,
      if (badgeTone != null) 'badge_tone': badgeTone,
      if (imageAsset != null) 'image_asset': imageAsset,
      if (rating != null) 'rating': rating,
      if (reviewCount != null) 'review_count': reviewCount,
      if (stockCount != null) 'stock_count': stockCount,
      if (isSpotlight != null) 'is_spotlight': isSpotlight,
      if (isSpecialOffer != null) 'is_special_offer': isSpecialOffer,
      if (isNewArrival != null) 'is_new_arrival': isNewArrival,
      if (isPopular != null) 'is_popular': isPopular,
      if (isPairingSuggestion != null)
        'is_pairing_suggestion': isPairingSuggestion,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? subtitle,
    Value<String>? description,
    Value<String>? categoryId,
    Value<String>? brandId,
    Value<String>? farmLabel,
    Value<String>? unitLabel,
    Value<int>? pricePiasters,
    Value<int?>? originalPricePiasters,
    Value<String?>? badgeText,
    Value<String>? badgeTone,
    Value<String>? imageAsset,
    Value<double>? rating,
    Value<int>? reviewCount,
    Value<int>? stockCount,
    Value<bool>? isSpotlight,
    Value<bool>? isSpecialOffer,
    Value<bool>? isNewArrival,
    Value<bool>? isPopular,
    Value<bool>? isPairingSuggestion,
    Value<int>? rowid,
  }) {
    return ProductsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      subtitle: subtitle ?? this.subtitle,
      description: description ?? this.description,
      categoryId: categoryId ?? this.categoryId,
      brandId: brandId ?? this.brandId,
      farmLabel: farmLabel ?? this.farmLabel,
      unitLabel: unitLabel ?? this.unitLabel,
      pricePiasters: pricePiasters ?? this.pricePiasters,
      originalPricePiasters:
          originalPricePiasters ?? this.originalPricePiasters,
      badgeText: badgeText ?? this.badgeText,
      badgeTone: badgeTone ?? this.badgeTone,
      imageAsset: imageAsset ?? this.imageAsset,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      stockCount: stockCount ?? this.stockCount,
      isSpotlight: isSpotlight ?? this.isSpotlight,
      isSpecialOffer: isSpecialOffer ?? this.isSpecialOffer,
      isNewArrival: isNewArrival ?? this.isNewArrival,
      isPopular: isPopular ?? this.isPopular,
      isPairingSuggestion: isPairingSuggestion ?? this.isPairingSuggestion,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (subtitle.present) {
      map['subtitle'] = Variable<String>(subtitle.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<String>(categoryId.value);
    }
    if (brandId.present) {
      map['brand_id'] = Variable<String>(brandId.value);
    }
    if (farmLabel.present) {
      map['farm_label'] = Variable<String>(farmLabel.value);
    }
    if (unitLabel.present) {
      map['unit_label'] = Variable<String>(unitLabel.value);
    }
    if (pricePiasters.present) {
      map['price_piasters'] = Variable<int>(pricePiasters.value);
    }
    if (originalPricePiasters.present) {
      map['original_price_piasters'] = Variable<int>(
        originalPricePiasters.value,
      );
    }
    if (badgeText.present) {
      map['badge_text'] = Variable<String>(badgeText.value);
    }
    if (badgeTone.present) {
      map['badge_tone'] = Variable<String>(badgeTone.value);
    }
    if (imageAsset.present) {
      map['image_asset'] = Variable<String>(imageAsset.value);
    }
    if (rating.present) {
      map['rating'] = Variable<double>(rating.value);
    }
    if (reviewCount.present) {
      map['review_count'] = Variable<int>(reviewCount.value);
    }
    if (stockCount.present) {
      map['stock_count'] = Variable<int>(stockCount.value);
    }
    if (isSpotlight.present) {
      map['is_spotlight'] = Variable<bool>(isSpotlight.value);
    }
    if (isSpecialOffer.present) {
      map['is_special_offer'] = Variable<bool>(isSpecialOffer.value);
    }
    if (isNewArrival.present) {
      map['is_new_arrival'] = Variable<bool>(isNewArrival.value);
    }
    if (isPopular.present) {
      map['is_popular'] = Variable<bool>(isPopular.value);
    }
    if (isPairingSuggestion.present) {
      map['is_pairing_suggestion'] = Variable<bool>(isPairingSuggestion.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('subtitle: $subtitle, ')
          ..write('description: $description, ')
          ..write('categoryId: $categoryId, ')
          ..write('brandId: $brandId, ')
          ..write('farmLabel: $farmLabel, ')
          ..write('unitLabel: $unitLabel, ')
          ..write('pricePiasters: $pricePiasters, ')
          ..write('originalPricePiasters: $originalPricePiasters, ')
          ..write('badgeText: $badgeText, ')
          ..write('badgeTone: $badgeTone, ')
          ..write('imageAsset: $imageAsset, ')
          ..write('rating: $rating, ')
          ..write('reviewCount: $reviewCount, ')
          ..write('stockCount: $stockCount, ')
          ..write('isSpotlight: $isSpotlight, ')
          ..write('isSpecialOffer: $isSpecialOffer, ')
          ..write('isNewArrival: $isNewArrival, ')
          ..write('isPopular: $isPopular, ')
          ..write('isPairingSuggestion: $isPairingSuggestion, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BannersTable extends Banners with TableInfo<$BannersTable, Banner> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BannersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _badgeTextMeta = const VerificationMeta(
    'badgeText',
  );
  @override
  late final GeneratedColumn<String> badgeText = GeneratedColumn<String>(
    'badge_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subtitleMeta = const VerificationMeta(
    'subtitle',
  );
  @override
  late final GeneratedColumn<String> subtitle = GeneratedColumn<String>(
    'subtitle',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _ctaLabelMeta = const VerificationMeta(
    'ctaLabel',
  );
  @override
  late final GeneratedColumn<String> ctaLabel = GeneratedColumn<String>(
    'cta_label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _targetCategoryIdMeta = const VerificationMeta(
    'targetCategoryId',
  );
  @override
  late final GeneratedColumn<String> targetCategoryId = GeneratedColumn<String>(
    'target_category_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageAssetMeta = const VerificationMeta(
    'imageAsset',
  );
  @override
  late final GeneratedColumn<String> imageAsset = GeneratedColumn<String>(
    'image_asset',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _gradientStartHexMeta = const VerificationMeta(
    'gradientStartHex',
  );
  @override
  late final GeneratedColumn<int> gradientStartHex = GeneratedColumn<int>(
    'gradient_start_hex',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _gradientEndHexMeta = const VerificationMeta(
    'gradientEndHex',
  );
  @override
  late final GeneratedColumn<int> gradientEndHex = GeneratedColumn<int>(
    'gradient_end_hex',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ctaTextColorHexMeta = const VerificationMeta(
    'ctaTextColorHex',
  );
  @override
  late final GeneratedColumn<int> ctaTextColorHex = GeneratedColumn<int>(
    'cta_text_color_hex',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bannerTypeMeta = const VerificationMeta(
    'bannerType',
  );
  @override
  late final GeneratedColumn<String> bannerType = GeneratedColumn<String>(
    'banner_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    badgeText,
    title,
    subtitle,
    ctaLabel,
    targetCategoryId,
    imageAsset,
    gradientStartHex,
    gradientEndHex,
    ctaTextColorHex,
    bannerType,
    sortOrder,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'banners';
  @override
  VerificationContext validateIntegrity(
    Insertable<Banner> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('badge_text')) {
      context.handle(
        _badgeTextMeta,
        badgeText.isAcceptableOrUnknown(data['badge_text']!, _badgeTextMeta),
      );
    } else if (isInserting) {
      context.missing(_badgeTextMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('subtitle')) {
      context.handle(
        _subtitleMeta,
        subtitle.isAcceptableOrUnknown(data['subtitle']!, _subtitleMeta),
      );
    }
    if (data.containsKey('cta_label')) {
      context.handle(
        _ctaLabelMeta,
        ctaLabel.isAcceptableOrUnknown(data['cta_label']!, _ctaLabelMeta),
      );
    } else if (isInserting) {
      context.missing(_ctaLabelMeta);
    }
    if (data.containsKey('target_category_id')) {
      context.handle(
        _targetCategoryIdMeta,
        targetCategoryId.isAcceptableOrUnknown(
          data['target_category_id']!,
          _targetCategoryIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_targetCategoryIdMeta);
    }
    if (data.containsKey('image_asset')) {
      context.handle(
        _imageAssetMeta,
        imageAsset.isAcceptableOrUnknown(data['image_asset']!, _imageAssetMeta),
      );
    } else if (isInserting) {
      context.missing(_imageAssetMeta);
    }
    if (data.containsKey('gradient_start_hex')) {
      context.handle(
        _gradientStartHexMeta,
        gradientStartHex.isAcceptableOrUnknown(
          data['gradient_start_hex']!,
          _gradientStartHexMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_gradientStartHexMeta);
    }
    if (data.containsKey('gradient_end_hex')) {
      context.handle(
        _gradientEndHexMeta,
        gradientEndHex.isAcceptableOrUnknown(
          data['gradient_end_hex']!,
          _gradientEndHexMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_gradientEndHexMeta);
    }
    if (data.containsKey('cta_text_color_hex')) {
      context.handle(
        _ctaTextColorHexMeta,
        ctaTextColorHex.isAcceptableOrUnknown(
          data['cta_text_color_hex']!,
          _ctaTextColorHexMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ctaTextColorHexMeta);
    }
    if (data.containsKey('banner_type')) {
      context.handle(
        _bannerTypeMeta,
        bannerType.isAcceptableOrUnknown(data['banner_type']!, _bannerTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_bannerTypeMeta);
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Banner map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Banner(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      badgeText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}badge_text'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      subtitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subtitle'],
      ),
      ctaLabel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cta_label'],
      )!,
      targetCategoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}target_category_id'],
      )!,
      imageAsset: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_asset'],
      )!,
      gradientStartHex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}gradient_start_hex'],
      )!,
      gradientEndHex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}gradient_end_hex'],
      )!,
      ctaTextColorHex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cta_text_color_hex'],
      )!,
      bannerType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}banner_type'],
      )!,
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
    );
  }

  @override
  $BannersTable createAlias(String alias) {
    return $BannersTable(attachedDatabase, alias);
  }
}

class Banner extends DataClass implements Insertable<Banner> {
  final String id;
  final String badgeText;
  final String title;
  final String? subtitle;
  final String ctaLabel;
  final String targetCategoryId;
  final String imageAsset;
  final int gradientStartHex;
  final int gradientEndHex;
  final int ctaTextColorHex;
  final String bannerType;
  final int sortOrder;
  const Banner({
    required this.id,
    required this.badgeText,
    required this.title,
    this.subtitle,
    required this.ctaLabel,
    required this.targetCategoryId,
    required this.imageAsset,
    required this.gradientStartHex,
    required this.gradientEndHex,
    required this.ctaTextColorHex,
    required this.bannerType,
    required this.sortOrder,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['badge_text'] = Variable<String>(badgeText);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || subtitle != null) {
      map['subtitle'] = Variable<String>(subtitle);
    }
    map['cta_label'] = Variable<String>(ctaLabel);
    map['target_category_id'] = Variable<String>(targetCategoryId);
    map['image_asset'] = Variable<String>(imageAsset);
    map['gradient_start_hex'] = Variable<int>(gradientStartHex);
    map['gradient_end_hex'] = Variable<int>(gradientEndHex);
    map['cta_text_color_hex'] = Variable<int>(ctaTextColorHex);
    map['banner_type'] = Variable<String>(bannerType);
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  BannersCompanion toCompanion(bool nullToAbsent) {
    return BannersCompanion(
      id: Value(id),
      badgeText: Value(badgeText),
      title: Value(title),
      subtitle: subtitle == null && nullToAbsent
          ? const Value.absent()
          : Value(subtitle),
      ctaLabel: Value(ctaLabel),
      targetCategoryId: Value(targetCategoryId),
      imageAsset: Value(imageAsset),
      gradientStartHex: Value(gradientStartHex),
      gradientEndHex: Value(gradientEndHex),
      ctaTextColorHex: Value(ctaTextColorHex),
      bannerType: Value(bannerType),
      sortOrder: Value(sortOrder),
    );
  }

  factory Banner.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Banner(
      id: serializer.fromJson<String>(json['id']),
      badgeText: serializer.fromJson<String>(json['badgeText']),
      title: serializer.fromJson<String>(json['title']),
      subtitle: serializer.fromJson<String?>(json['subtitle']),
      ctaLabel: serializer.fromJson<String>(json['ctaLabel']),
      targetCategoryId: serializer.fromJson<String>(json['targetCategoryId']),
      imageAsset: serializer.fromJson<String>(json['imageAsset']),
      gradientStartHex: serializer.fromJson<int>(json['gradientStartHex']),
      gradientEndHex: serializer.fromJson<int>(json['gradientEndHex']),
      ctaTextColorHex: serializer.fromJson<int>(json['ctaTextColorHex']),
      bannerType: serializer.fromJson<String>(json['bannerType']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'badgeText': serializer.toJson<String>(badgeText),
      'title': serializer.toJson<String>(title),
      'subtitle': serializer.toJson<String?>(subtitle),
      'ctaLabel': serializer.toJson<String>(ctaLabel),
      'targetCategoryId': serializer.toJson<String>(targetCategoryId),
      'imageAsset': serializer.toJson<String>(imageAsset),
      'gradientStartHex': serializer.toJson<int>(gradientStartHex),
      'gradientEndHex': serializer.toJson<int>(gradientEndHex),
      'ctaTextColorHex': serializer.toJson<int>(ctaTextColorHex),
      'bannerType': serializer.toJson<String>(bannerType),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  Banner copyWith({
    String? id,
    String? badgeText,
    String? title,
    Value<String?> subtitle = const Value.absent(),
    String? ctaLabel,
    String? targetCategoryId,
    String? imageAsset,
    int? gradientStartHex,
    int? gradientEndHex,
    int? ctaTextColorHex,
    String? bannerType,
    int? sortOrder,
  }) => Banner(
    id: id ?? this.id,
    badgeText: badgeText ?? this.badgeText,
    title: title ?? this.title,
    subtitle: subtitle.present ? subtitle.value : this.subtitle,
    ctaLabel: ctaLabel ?? this.ctaLabel,
    targetCategoryId: targetCategoryId ?? this.targetCategoryId,
    imageAsset: imageAsset ?? this.imageAsset,
    gradientStartHex: gradientStartHex ?? this.gradientStartHex,
    gradientEndHex: gradientEndHex ?? this.gradientEndHex,
    ctaTextColorHex: ctaTextColorHex ?? this.ctaTextColorHex,
    bannerType: bannerType ?? this.bannerType,
    sortOrder: sortOrder ?? this.sortOrder,
  );
  Banner copyWithCompanion(BannersCompanion data) {
    return Banner(
      id: data.id.present ? data.id.value : this.id,
      badgeText: data.badgeText.present ? data.badgeText.value : this.badgeText,
      title: data.title.present ? data.title.value : this.title,
      subtitle: data.subtitle.present ? data.subtitle.value : this.subtitle,
      ctaLabel: data.ctaLabel.present ? data.ctaLabel.value : this.ctaLabel,
      targetCategoryId: data.targetCategoryId.present
          ? data.targetCategoryId.value
          : this.targetCategoryId,
      imageAsset: data.imageAsset.present
          ? data.imageAsset.value
          : this.imageAsset,
      gradientStartHex: data.gradientStartHex.present
          ? data.gradientStartHex.value
          : this.gradientStartHex,
      gradientEndHex: data.gradientEndHex.present
          ? data.gradientEndHex.value
          : this.gradientEndHex,
      ctaTextColorHex: data.ctaTextColorHex.present
          ? data.ctaTextColorHex.value
          : this.ctaTextColorHex,
      bannerType: data.bannerType.present
          ? data.bannerType.value
          : this.bannerType,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Banner(')
          ..write('id: $id, ')
          ..write('badgeText: $badgeText, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('ctaLabel: $ctaLabel, ')
          ..write('targetCategoryId: $targetCategoryId, ')
          ..write('imageAsset: $imageAsset, ')
          ..write('gradientStartHex: $gradientStartHex, ')
          ..write('gradientEndHex: $gradientEndHex, ')
          ..write('ctaTextColorHex: $ctaTextColorHex, ')
          ..write('bannerType: $bannerType, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    badgeText,
    title,
    subtitle,
    ctaLabel,
    targetCategoryId,
    imageAsset,
    gradientStartHex,
    gradientEndHex,
    ctaTextColorHex,
    bannerType,
    sortOrder,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Banner &&
          other.id == this.id &&
          other.badgeText == this.badgeText &&
          other.title == this.title &&
          other.subtitle == this.subtitle &&
          other.ctaLabel == this.ctaLabel &&
          other.targetCategoryId == this.targetCategoryId &&
          other.imageAsset == this.imageAsset &&
          other.gradientStartHex == this.gradientStartHex &&
          other.gradientEndHex == this.gradientEndHex &&
          other.ctaTextColorHex == this.ctaTextColorHex &&
          other.bannerType == this.bannerType &&
          other.sortOrder == this.sortOrder);
}

class BannersCompanion extends UpdateCompanion<Banner> {
  final Value<String> id;
  final Value<String> badgeText;
  final Value<String> title;
  final Value<String?> subtitle;
  final Value<String> ctaLabel;
  final Value<String> targetCategoryId;
  final Value<String> imageAsset;
  final Value<int> gradientStartHex;
  final Value<int> gradientEndHex;
  final Value<int> ctaTextColorHex;
  final Value<String> bannerType;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const BannersCompanion({
    this.id = const Value.absent(),
    this.badgeText = const Value.absent(),
    this.title = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.ctaLabel = const Value.absent(),
    this.targetCategoryId = const Value.absent(),
    this.imageAsset = const Value.absent(),
    this.gradientStartHex = const Value.absent(),
    this.gradientEndHex = const Value.absent(),
    this.ctaTextColorHex = const Value.absent(),
    this.bannerType = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BannersCompanion.insert({
    required String id,
    required String badgeText,
    required String title,
    this.subtitle = const Value.absent(),
    required String ctaLabel,
    required String targetCategoryId,
    required String imageAsset,
    required int gradientStartHex,
    required int gradientEndHex,
    required int ctaTextColorHex,
    required String bannerType,
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       badgeText = Value(badgeText),
       title = Value(title),
       ctaLabel = Value(ctaLabel),
       targetCategoryId = Value(targetCategoryId),
       imageAsset = Value(imageAsset),
       gradientStartHex = Value(gradientStartHex),
       gradientEndHex = Value(gradientEndHex),
       ctaTextColorHex = Value(ctaTextColorHex),
       bannerType = Value(bannerType);
  static Insertable<Banner> custom({
    Expression<String>? id,
    Expression<String>? badgeText,
    Expression<String>? title,
    Expression<String>? subtitle,
    Expression<String>? ctaLabel,
    Expression<String>? targetCategoryId,
    Expression<String>? imageAsset,
    Expression<int>? gradientStartHex,
    Expression<int>? gradientEndHex,
    Expression<int>? ctaTextColorHex,
    Expression<String>? bannerType,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (badgeText != null) 'badge_text': badgeText,
      if (title != null) 'title': title,
      if (subtitle != null) 'subtitle': subtitle,
      if (ctaLabel != null) 'cta_label': ctaLabel,
      if (targetCategoryId != null) 'target_category_id': targetCategoryId,
      if (imageAsset != null) 'image_asset': imageAsset,
      if (gradientStartHex != null) 'gradient_start_hex': gradientStartHex,
      if (gradientEndHex != null) 'gradient_end_hex': gradientEndHex,
      if (ctaTextColorHex != null) 'cta_text_color_hex': ctaTextColorHex,
      if (bannerType != null) 'banner_type': bannerType,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BannersCompanion copyWith({
    Value<String>? id,
    Value<String>? badgeText,
    Value<String>? title,
    Value<String?>? subtitle,
    Value<String>? ctaLabel,
    Value<String>? targetCategoryId,
    Value<String>? imageAsset,
    Value<int>? gradientStartHex,
    Value<int>? gradientEndHex,
    Value<int>? ctaTextColorHex,
    Value<String>? bannerType,
    Value<int>? sortOrder,
    Value<int>? rowid,
  }) {
    return BannersCompanion(
      id: id ?? this.id,
      badgeText: badgeText ?? this.badgeText,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      ctaLabel: ctaLabel ?? this.ctaLabel,
      targetCategoryId: targetCategoryId ?? this.targetCategoryId,
      imageAsset: imageAsset ?? this.imageAsset,
      gradientStartHex: gradientStartHex ?? this.gradientStartHex,
      gradientEndHex: gradientEndHex ?? this.gradientEndHex,
      ctaTextColorHex: ctaTextColorHex ?? this.ctaTextColorHex,
      bannerType: bannerType ?? this.bannerType,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (badgeText.present) {
      map['badge_text'] = Variable<String>(badgeText.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (subtitle.present) {
      map['subtitle'] = Variable<String>(subtitle.value);
    }
    if (ctaLabel.present) {
      map['cta_label'] = Variable<String>(ctaLabel.value);
    }
    if (targetCategoryId.present) {
      map['target_category_id'] = Variable<String>(targetCategoryId.value);
    }
    if (imageAsset.present) {
      map['image_asset'] = Variable<String>(imageAsset.value);
    }
    if (gradientStartHex.present) {
      map['gradient_start_hex'] = Variable<int>(gradientStartHex.value);
    }
    if (gradientEndHex.present) {
      map['gradient_end_hex'] = Variable<int>(gradientEndHex.value);
    }
    if (ctaTextColorHex.present) {
      map['cta_text_color_hex'] = Variable<int>(ctaTextColorHex.value);
    }
    if (bannerType.present) {
      map['banner_type'] = Variable<String>(bannerType.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BannersCompanion(')
          ..write('id: $id, ')
          ..write('badgeText: $badgeText, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('ctaLabel: $ctaLabel, ')
          ..write('targetCategoryId: $targetCategoryId, ')
          ..write('imageAsset: $imageAsset, ')
          ..write('gradientStartHex: $gradientStartHex, ')
          ..write('gradientEndHex: $gradientEndHex, ')
          ..write('ctaTextColorHex: $ctaTextColorHex, ')
          ..write('bannerType: $bannerType, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CartItemsTable extends CartItems
    with TableInfo<$CartItemsTable, CartItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CartItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES products (id)',
    ),
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _addedAtMeta = const VerificationMeta(
    'addedAt',
  );
  @override
  late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>(
    'added_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [productId, quantity, addedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cart_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<CartItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    }
    if (data.containsKey('added_at')) {
      context.handle(
        _addedAtMeta,
        addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {productId};
  @override
  CartItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CartItem(
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_id'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
      addedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}added_at'],
      )!,
    );
  }

  @override
  $CartItemsTable createAlias(String alias) {
    return $CartItemsTable(attachedDatabase, alias);
  }
}

class CartItem extends DataClass implements Insertable<CartItem> {
  final String productId;
  final int quantity;
  final DateTime addedAt;
  const CartItem({
    required this.productId,
    required this.quantity,
    required this.addedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['product_id'] = Variable<String>(productId);
    map['quantity'] = Variable<int>(quantity);
    map['added_at'] = Variable<DateTime>(addedAt);
    return map;
  }

  CartItemsCompanion toCompanion(bool nullToAbsent) {
    return CartItemsCompanion(
      productId: Value(productId),
      quantity: Value(quantity),
      addedAt: Value(addedAt),
    );
  }

  factory CartItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CartItem(
      productId: serializer.fromJson<String>(json['productId']),
      quantity: serializer.fromJson<int>(json['quantity']),
      addedAt: serializer.fromJson<DateTime>(json['addedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'productId': serializer.toJson<String>(productId),
      'quantity': serializer.toJson<int>(quantity),
      'addedAt': serializer.toJson<DateTime>(addedAt),
    };
  }

  CartItem copyWith({String? productId, int? quantity, DateTime? addedAt}) =>
      CartItem(
        productId: productId ?? this.productId,
        quantity: quantity ?? this.quantity,
        addedAt: addedAt ?? this.addedAt,
      );
  CartItem copyWithCompanion(CartItemsCompanion data) {
    return CartItem(
      productId: data.productId.present ? data.productId.value : this.productId,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      addedAt: data.addedAt.present ? data.addedAt.value : this.addedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CartItem(')
          ..write('productId: $productId, ')
          ..write('quantity: $quantity, ')
          ..write('addedAt: $addedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(productId, quantity, addedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CartItem &&
          other.productId == this.productId &&
          other.quantity == this.quantity &&
          other.addedAt == this.addedAt);
}

class CartItemsCompanion extends UpdateCompanion<CartItem> {
  final Value<String> productId;
  final Value<int> quantity;
  final Value<DateTime> addedAt;
  final Value<int> rowid;
  const CartItemsCompanion({
    this.productId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.addedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CartItemsCompanion.insert({
    required String productId,
    this.quantity = const Value.absent(),
    this.addedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : productId = Value(productId);
  static Insertable<CartItem> custom({
    Expression<String>? productId,
    Expression<int>? quantity,
    Expression<DateTime>? addedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (productId != null) 'product_id': productId,
      if (quantity != null) 'quantity': quantity,
      if (addedAt != null) 'added_at': addedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CartItemsCompanion copyWith({
    Value<String>? productId,
    Value<int>? quantity,
    Value<DateTime>? addedAt,
    Value<int>? rowid,
  }) {
    return CartItemsCompanion(
      productId: productId ?? this.productId,
      quantity: quantity ?? this.quantity,
      addedAt: addedAt ?? this.addedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<DateTime>(addedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CartItemsCompanion(')
          ..write('productId: $productId, ')
          ..write('quantity: $quantity, ')
          ..write('addedAt: $addedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FavoritesTable extends Favorites
    with TableInfo<$FavoritesTable, Favorite> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoritesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES products (id)',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [productId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorites';
  @override
  VerificationContext validateIntegrity(
    Insertable<Favorite> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {productId};
  @override
  Favorite map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Favorite(
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FavoritesTable createAlias(String alias) {
    return $FavoritesTable(attachedDatabase, alias);
  }
}

class Favorite extends DataClass implements Insertable<Favorite> {
  final String productId;
  final DateTime createdAt;
  const Favorite({required this.productId, required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['product_id'] = Variable<String>(productId);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FavoritesCompanion toCompanion(bool nullToAbsent) {
    return FavoritesCompanion(
      productId: Value(productId),
      createdAt: Value(createdAt),
    );
  }

  factory Favorite.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Favorite(
      productId: serializer.fromJson<String>(json['productId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'productId': serializer.toJson<String>(productId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Favorite copyWith({String? productId, DateTime? createdAt}) => Favorite(
    productId: productId ?? this.productId,
    createdAt: createdAt ?? this.createdAt,
  );
  Favorite copyWithCompanion(FavoritesCompanion data) {
    return Favorite(
      productId: data.productId.present ? data.productId.value : this.productId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Favorite(')
          ..write('productId: $productId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(productId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Favorite &&
          other.productId == this.productId &&
          other.createdAt == this.createdAt);
}

class FavoritesCompanion extends UpdateCompanion<Favorite> {
  final Value<String> productId;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const FavoritesCompanion({
    this.productId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FavoritesCompanion.insert({
    required String productId,
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : productId = Value(productId);
  static Insertable<Favorite> custom({
    Expression<String>? productId,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (productId != null) 'product_id': productId,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FavoritesCompanion copyWith({
    Value<String>? productId,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return FavoritesCompanion(
      productId: productId ?? this.productId,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesCompanion(')
          ..write('productId: $productId, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AddressesTable extends Addresses
    with TableInfo<$AddressesTable, Address> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AddressesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
    'label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _streetMeta = const VerificationMeta('street');
  @override
  late final GeneratedColumn<String> street = GeneratedColumn<String>(
    'street',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _areaMeta = const VerificationMeta('area');
  @override
  late final GeneratedColumn<String> area = GeneratedColumn<String>(
    'area',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
    'city',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _etaTextMeta = const VerificationMeta(
    'etaText',
  );
  @override
  late final GeneratedColumn<String> etaText = GeneratedColumn<String>(
    'eta_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isDefaultMeta = const VerificationMeta(
    'isDefault',
  );
  @override
  late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>(
    'is_default',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_default" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    label,
    street,
    area,
    city,
    etaText,
    isDefault,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'addresses';
  @override
  VerificationContext validateIntegrity(
    Insertable<Address> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
        _labelMeta,
        label.isAcceptableOrUnknown(data['label']!, _labelMeta),
      );
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('street')) {
      context.handle(
        _streetMeta,
        street.isAcceptableOrUnknown(data['street']!, _streetMeta),
      );
    } else if (isInserting) {
      context.missing(_streetMeta);
    }
    if (data.containsKey('area')) {
      context.handle(
        _areaMeta,
        area.isAcceptableOrUnknown(data['area']!, _areaMeta),
      );
    } else if (isInserting) {
      context.missing(_areaMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
        _cityMeta,
        city.isAcceptableOrUnknown(data['city']!, _cityMeta),
      );
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('eta_text')) {
      context.handle(
        _etaTextMeta,
        etaText.isAcceptableOrUnknown(data['eta_text']!, _etaTextMeta),
      );
    } else if (isInserting) {
      context.missing(_etaTextMeta);
    }
    if (data.containsKey('is_default')) {
      context.handle(
        _isDefaultMeta,
        isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Address map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Address(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      label: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}label'],
      )!,
      street: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}street'],
      )!,
      area: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}area'],
      )!,
      city: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}city'],
      )!,
      etaText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}eta_text'],
      )!,
      isDefault: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_default'],
      )!,
    );
  }

  @override
  $AddressesTable createAlias(String alias) {
    return $AddressesTable(attachedDatabase, alias);
  }
}

class Address extends DataClass implements Insertable<Address> {
  final String id;
  final String label;
  final String street;
  final String area;
  final String city;
  final String etaText;
  final bool isDefault;
  const Address({
    required this.id,
    required this.label,
    required this.street,
    required this.area,
    required this.city,
    required this.etaText,
    required this.isDefault,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['label'] = Variable<String>(label);
    map['street'] = Variable<String>(street);
    map['area'] = Variable<String>(area);
    map['city'] = Variable<String>(city);
    map['eta_text'] = Variable<String>(etaText);
    map['is_default'] = Variable<bool>(isDefault);
    return map;
  }

  AddressesCompanion toCompanion(bool nullToAbsent) {
    return AddressesCompanion(
      id: Value(id),
      label: Value(label),
      street: Value(street),
      area: Value(area),
      city: Value(city),
      etaText: Value(etaText),
      isDefault: Value(isDefault),
    );
  }

  factory Address.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Address(
      id: serializer.fromJson<String>(json['id']),
      label: serializer.fromJson<String>(json['label']),
      street: serializer.fromJson<String>(json['street']),
      area: serializer.fromJson<String>(json['area']),
      city: serializer.fromJson<String>(json['city']),
      etaText: serializer.fromJson<String>(json['etaText']),
      isDefault: serializer.fromJson<bool>(json['isDefault']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'label': serializer.toJson<String>(label),
      'street': serializer.toJson<String>(street),
      'area': serializer.toJson<String>(area),
      'city': serializer.toJson<String>(city),
      'etaText': serializer.toJson<String>(etaText),
      'isDefault': serializer.toJson<bool>(isDefault),
    };
  }

  Address copyWith({
    String? id,
    String? label,
    String? street,
    String? area,
    String? city,
    String? etaText,
    bool? isDefault,
  }) => Address(
    id: id ?? this.id,
    label: label ?? this.label,
    street: street ?? this.street,
    area: area ?? this.area,
    city: city ?? this.city,
    etaText: etaText ?? this.etaText,
    isDefault: isDefault ?? this.isDefault,
  );
  Address copyWithCompanion(AddressesCompanion data) {
    return Address(
      id: data.id.present ? data.id.value : this.id,
      label: data.label.present ? data.label.value : this.label,
      street: data.street.present ? data.street.value : this.street,
      area: data.area.present ? data.area.value : this.area,
      city: data.city.present ? data.city.value : this.city,
      etaText: data.etaText.present ? data.etaText.value : this.etaText,
      isDefault: data.isDefault.present ? data.isDefault.value : this.isDefault,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Address(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('street: $street, ')
          ..write('area: $area, ')
          ..write('city: $city, ')
          ..write('etaText: $etaText, ')
          ..write('isDefault: $isDefault')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, label, street, area, city, etaText, isDefault);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Address &&
          other.id == this.id &&
          other.label == this.label &&
          other.street == this.street &&
          other.area == this.area &&
          other.city == this.city &&
          other.etaText == this.etaText &&
          other.isDefault == this.isDefault);
}

class AddressesCompanion extends UpdateCompanion<Address> {
  final Value<String> id;
  final Value<String> label;
  final Value<String> street;
  final Value<String> area;
  final Value<String> city;
  final Value<String> etaText;
  final Value<bool> isDefault;
  final Value<int> rowid;
  const AddressesCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.street = const Value.absent(),
    this.area = const Value.absent(),
    this.city = const Value.absent(),
    this.etaText = const Value.absent(),
    this.isDefault = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AddressesCompanion.insert({
    required String id,
    required String label,
    required String street,
    required String area,
    required String city,
    required String etaText,
    this.isDefault = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       label = Value(label),
       street = Value(street),
       area = Value(area),
       city = Value(city),
       etaText = Value(etaText);
  static Insertable<Address> custom({
    Expression<String>? id,
    Expression<String>? label,
    Expression<String>? street,
    Expression<String>? area,
    Expression<String>? city,
    Expression<String>? etaText,
    Expression<bool>? isDefault,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (street != null) 'street': street,
      if (area != null) 'area': area,
      if (city != null) 'city': city,
      if (etaText != null) 'eta_text': etaText,
      if (isDefault != null) 'is_default': isDefault,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AddressesCompanion copyWith({
    Value<String>? id,
    Value<String>? label,
    Value<String>? street,
    Value<String>? area,
    Value<String>? city,
    Value<String>? etaText,
    Value<bool>? isDefault,
    Value<int>? rowid,
  }) {
    return AddressesCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      street: street ?? this.street,
      area: area ?? this.area,
      city: city ?? this.city,
      etaText: etaText ?? this.etaText,
      isDefault: isDefault ?? this.isDefault,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (street.present) {
      map['street'] = Variable<String>(street.value);
    }
    if (area.present) {
      map['area'] = Variable<String>(area.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (etaText.present) {
      map['eta_text'] = Variable<String>(etaText.value);
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool>(isDefault.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressesCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('street: $street, ')
          ..write('area: $area, ')
          ..write('city: $city, ')
          ..write('etaText: $etaText, ')
          ..write('isDefault: $isDefault, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrdersTable extends Orders with TableInfo<$OrdersTable, Order> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrdersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _orderNumberMeta = const VerificationMeta(
    'orderNumber',
  );
  @override
  late final GeneratedColumn<String> orderNumber = GeneratedColumn<String>(
    'order_number',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addressSummaryMeta = const VerificationMeta(
    'addressSummary',
  );
  @override
  late final GeneratedColumn<String> addressSummary = GeneratedColumn<String>(
    'address_summary',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paymentMethodMeta = const VerificationMeta(
    'paymentMethod',
  );
  @override
  late final GeneratedColumn<String> paymentMethod = GeneratedColumn<String>(
    'payment_method',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subtotalPiastersMeta = const VerificationMeta(
    'subtotalPiasters',
  );
  @override
  late final GeneratedColumn<int> subtotalPiasters = GeneratedColumn<int>(
    'subtotal_piasters',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _deliveryFeePiastersMeta =
      const VerificationMeta('deliveryFeePiasters');
  @override
  late final GeneratedColumn<int> deliveryFeePiasters = GeneratedColumn<int>(
    'delivery_fee_piasters',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _packagingFeePiastersMeta =
      const VerificationMeta('packagingFeePiasters');
  @override
  late final GeneratedColumn<int> packagingFeePiasters = GeneratedColumn<int>(
    'packaging_fee_piasters',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _discountPiastersMeta = const VerificationMeta(
    'discountPiasters',
  );
  @override
  late final GeneratedColumn<int> discountPiasters = GeneratedColumn<int>(
    'discount_piasters',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalPiastersMeta = const VerificationMeta(
    'totalPiasters',
  );
  @override
  late final GeneratedColumn<int> totalPiasters = GeneratedColumn<int>(
    'total_piasters',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _promoCodeMeta = const VerificationMeta(
    'promoCode',
  );
  @override
  late final GeneratedColumn<String> promoCode = GeneratedColumn<String>(
    'promo_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    orderNumber,
    status,
    addressSummary,
    paymentMethod,
    subtotalPiasters,
    deliveryFeePiasters,
    packagingFeePiasters,
    discountPiasters,
    totalPiasters,
    promoCode,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'orders';
  @override
  VerificationContext validateIntegrity(
    Insertable<Order> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('order_number')) {
      context.handle(
        _orderNumberMeta,
        orderNumber.isAcceptableOrUnknown(
          data['order_number']!,
          _orderNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_orderNumberMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('address_summary')) {
      context.handle(
        _addressSummaryMeta,
        addressSummary.isAcceptableOrUnknown(
          data['address_summary']!,
          _addressSummaryMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_addressSummaryMeta);
    }
    if (data.containsKey('payment_method')) {
      context.handle(
        _paymentMethodMeta,
        paymentMethod.isAcceptableOrUnknown(
          data['payment_method']!,
          _paymentMethodMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_paymentMethodMeta);
    }
    if (data.containsKey('subtotal_piasters')) {
      context.handle(
        _subtotalPiastersMeta,
        subtotalPiasters.isAcceptableOrUnknown(
          data['subtotal_piasters']!,
          _subtotalPiastersMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_subtotalPiastersMeta);
    }
    if (data.containsKey('delivery_fee_piasters')) {
      context.handle(
        _deliveryFeePiastersMeta,
        deliveryFeePiasters.isAcceptableOrUnknown(
          data['delivery_fee_piasters']!,
          _deliveryFeePiastersMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_deliveryFeePiastersMeta);
    }
    if (data.containsKey('packaging_fee_piasters')) {
      context.handle(
        _packagingFeePiastersMeta,
        packagingFeePiasters.isAcceptableOrUnknown(
          data['packaging_fee_piasters']!,
          _packagingFeePiastersMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_packagingFeePiastersMeta);
    }
    if (data.containsKey('discount_piasters')) {
      context.handle(
        _discountPiastersMeta,
        discountPiasters.isAcceptableOrUnknown(
          data['discount_piasters']!,
          _discountPiastersMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_discountPiastersMeta);
    }
    if (data.containsKey('total_piasters')) {
      context.handle(
        _totalPiastersMeta,
        totalPiasters.isAcceptableOrUnknown(
          data['total_piasters']!,
          _totalPiastersMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_totalPiastersMeta);
    }
    if (data.containsKey('promo_code')) {
      context.handle(
        _promoCodeMeta,
        promoCode.isAcceptableOrUnknown(data['promo_code']!, _promoCodeMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Order map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Order(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      orderNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}order_number'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      addressSummary: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address_summary'],
      )!,
      paymentMethod: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payment_method'],
      )!,
      subtotalPiasters: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}subtotal_piasters'],
      )!,
      deliveryFeePiasters: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}delivery_fee_piasters'],
      )!,
      packagingFeePiasters: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}packaging_fee_piasters'],
      )!,
      discountPiasters: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}discount_piasters'],
      )!,
      totalPiasters: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}total_piasters'],
      )!,
      promoCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}promo_code'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $OrdersTable createAlias(String alias) {
    return $OrdersTable(attachedDatabase, alias);
  }
}

class Order extends DataClass implements Insertable<Order> {
  final String id;
  final String orderNumber;
  final String status;
  final String addressSummary;
  final String paymentMethod;
  final int subtotalPiasters;
  final int deliveryFeePiasters;
  final int packagingFeePiasters;
  final int discountPiasters;
  final int totalPiasters;
  final String? promoCode;
  final DateTime createdAt;
  const Order({
    required this.id,
    required this.orderNumber,
    required this.status,
    required this.addressSummary,
    required this.paymentMethod,
    required this.subtotalPiasters,
    required this.deliveryFeePiasters,
    required this.packagingFeePiasters,
    required this.discountPiasters,
    required this.totalPiasters,
    this.promoCode,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['order_number'] = Variable<String>(orderNumber);
    map['status'] = Variable<String>(status);
    map['address_summary'] = Variable<String>(addressSummary);
    map['payment_method'] = Variable<String>(paymentMethod);
    map['subtotal_piasters'] = Variable<int>(subtotalPiasters);
    map['delivery_fee_piasters'] = Variable<int>(deliveryFeePiasters);
    map['packaging_fee_piasters'] = Variable<int>(packagingFeePiasters);
    map['discount_piasters'] = Variable<int>(discountPiasters);
    map['total_piasters'] = Variable<int>(totalPiasters);
    if (!nullToAbsent || promoCode != null) {
      map['promo_code'] = Variable<String>(promoCode);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  OrdersCompanion toCompanion(bool nullToAbsent) {
    return OrdersCompanion(
      id: Value(id),
      orderNumber: Value(orderNumber),
      status: Value(status),
      addressSummary: Value(addressSummary),
      paymentMethod: Value(paymentMethod),
      subtotalPiasters: Value(subtotalPiasters),
      deliveryFeePiasters: Value(deliveryFeePiasters),
      packagingFeePiasters: Value(packagingFeePiasters),
      discountPiasters: Value(discountPiasters),
      totalPiasters: Value(totalPiasters),
      promoCode: promoCode == null && nullToAbsent
          ? const Value.absent()
          : Value(promoCode),
      createdAt: Value(createdAt),
    );
  }

  factory Order.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Order(
      id: serializer.fromJson<String>(json['id']),
      orderNumber: serializer.fromJson<String>(json['orderNumber']),
      status: serializer.fromJson<String>(json['status']),
      addressSummary: serializer.fromJson<String>(json['addressSummary']),
      paymentMethod: serializer.fromJson<String>(json['paymentMethod']),
      subtotalPiasters: serializer.fromJson<int>(json['subtotalPiasters']),
      deliveryFeePiasters: serializer.fromJson<int>(
        json['deliveryFeePiasters'],
      ),
      packagingFeePiasters: serializer.fromJson<int>(
        json['packagingFeePiasters'],
      ),
      discountPiasters: serializer.fromJson<int>(json['discountPiasters']),
      totalPiasters: serializer.fromJson<int>(json['totalPiasters']),
      promoCode: serializer.fromJson<String?>(json['promoCode']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'orderNumber': serializer.toJson<String>(orderNumber),
      'status': serializer.toJson<String>(status),
      'addressSummary': serializer.toJson<String>(addressSummary),
      'paymentMethod': serializer.toJson<String>(paymentMethod),
      'subtotalPiasters': serializer.toJson<int>(subtotalPiasters),
      'deliveryFeePiasters': serializer.toJson<int>(deliveryFeePiasters),
      'packagingFeePiasters': serializer.toJson<int>(packagingFeePiasters),
      'discountPiasters': serializer.toJson<int>(discountPiasters),
      'totalPiasters': serializer.toJson<int>(totalPiasters),
      'promoCode': serializer.toJson<String?>(promoCode),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Order copyWith({
    String? id,
    String? orderNumber,
    String? status,
    String? addressSummary,
    String? paymentMethod,
    int? subtotalPiasters,
    int? deliveryFeePiasters,
    int? packagingFeePiasters,
    int? discountPiasters,
    int? totalPiasters,
    Value<String?> promoCode = const Value.absent(),
    DateTime? createdAt,
  }) => Order(
    id: id ?? this.id,
    orderNumber: orderNumber ?? this.orderNumber,
    status: status ?? this.status,
    addressSummary: addressSummary ?? this.addressSummary,
    paymentMethod: paymentMethod ?? this.paymentMethod,
    subtotalPiasters: subtotalPiasters ?? this.subtotalPiasters,
    deliveryFeePiasters: deliveryFeePiasters ?? this.deliveryFeePiasters,
    packagingFeePiasters: packagingFeePiasters ?? this.packagingFeePiasters,
    discountPiasters: discountPiasters ?? this.discountPiasters,
    totalPiasters: totalPiasters ?? this.totalPiasters,
    promoCode: promoCode.present ? promoCode.value : this.promoCode,
    createdAt: createdAt ?? this.createdAt,
  );
  Order copyWithCompanion(OrdersCompanion data) {
    return Order(
      id: data.id.present ? data.id.value : this.id,
      orderNumber: data.orderNumber.present
          ? data.orderNumber.value
          : this.orderNumber,
      status: data.status.present ? data.status.value : this.status,
      addressSummary: data.addressSummary.present
          ? data.addressSummary.value
          : this.addressSummary,
      paymentMethod: data.paymentMethod.present
          ? data.paymentMethod.value
          : this.paymentMethod,
      subtotalPiasters: data.subtotalPiasters.present
          ? data.subtotalPiasters.value
          : this.subtotalPiasters,
      deliveryFeePiasters: data.deliveryFeePiasters.present
          ? data.deliveryFeePiasters.value
          : this.deliveryFeePiasters,
      packagingFeePiasters: data.packagingFeePiasters.present
          ? data.packagingFeePiasters.value
          : this.packagingFeePiasters,
      discountPiasters: data.discountPiasters.present
          ? data.discountPiasters.value
          : this.discountPiasters,
      totalPiasters: data.totalPiasters.present
          ? data.totalPiasters.value
          : this.totalPiasters,
      promoCode: data.promoCode.present ? data.promoCode.value : this.promoCode,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Order(')
          ..write('id: $id, ')
          ..write('orderNumber: $orderNumber, ')
          ..write('status: $status, ')
          ..write('addressSummary: $addressSummary, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('subtotalPiasters: $subtotalPiasters, ')
          ..write('deliveryFeePiasters: $deliveryFeePiasters, ')
          ..write('packagingFeePiasters: $packagingFeePiasters, ')
          ..write('discountPiasters: $discountPiasters, ')
          ..write('totalPiasters: $totalPiasters, ')
          ..write('promoCode: $promoCode, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    orderNumber,
    status,
    addressSummary,
    paymentMethod,
    subtotalPiasters,
    deliveryFeePiasters,
    packagingFeePiasters,
    discountPiasters,
    totalPiasters,
    promoCode,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Order &&
          other.id == this.id &&
          other.orderNumber == this.orderNumber &&
          other.status == this.status &&
          other.addressSummary == this.addressSummary &&
          other.paymentMethod == this.paymentMethod &&
          other.subtotalPiasters == this.subtotalPiasters &&
          other.deliveryFeePiasters == this.deliveryFeePiasters &&
          other.packagingFeePiasters == this.packagingFeePiasters &&
          other.discountPiasters == this.discountPiasters &&
          other.totalPiasters == this.totalPiasters &&
          other.promoCode == this.promoCode &&
          other.createdAt == this.createdAt);
}

class OrdersCompanion extends UpdateCompanion<Order> {
  final Value<String> id;
  final Value<String> orderNumber;
  final Value<String> status;
  final Value<String> addressSummary;
  final Value<String> paymentMethod;
  final Value<int> subtotalPiasters;
  final Value<int> deliveryFeePiasters;
  final Value<int> packagingFeePiasters;
  final Value<int> discountPiasters;
  final Value<int> totalPiasters;
  final Value<String?> promoCode;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const OrdersCompanion({
    this.id = const Value.absent(),
    this.orderNumber = const Value.absent(),
    this.status = const Value.absent(),
    this.addressSummary = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.subtotalPiasters = const Value.absent(),
    this.deliveryFeePiasters = const Value.absent(),
    this.packagingFeePiasters = const Value.absent(),
    this.discountPiasters = const Value.absent(),
    this.totalPiasters = const Value.absent(),
    this.promoCode = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrdersCompanion.insert({
    required String id,
    required String orderNumber,
    required String status,
    required String addressSummary,
    required String paymentMethod,
    required int subtotalPiasters,
    required int deliveryFeePiasters,
    required int packagingFeePiasters,
    required int discountPiasters,
    required int totalPiasters,
    this.promoCode = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       orderNumber = Value(orderNumber),
       status = Value(status),
       addressSummary = Value(addressSummary),
       paymentMethod = Value(paymentMethod),
       subtotalPiasters = Value(subtotalPiasters),
       deliveryFeePiasters = Value(deliveryFeePiasters),
       packagingFeePiasters = Value(packagingFeePiasters),
       discountPiasters = Value(discountPiasters),
       totalPiasters = Value(totalPiasters);
  static Insertable<Order> custom({
    Expression<String>? id,
    Expression<String>? orderNumber,
    Expression<String>? status,
    Expression<String>? addressSummary,
    Expression<String>? paymentMethod,
    Expression<int>? subtotalPiasters,
    Expression<int>? deliveryFeePiasters,
    Expression<int>? packagingFeePiasters,
    Expression<int>? discountPiasters,
    Expression<int>? totalPiasters,
    Expression<String>? promoCode,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (orderNumber != null) 'order_number': orderNumber,
      if (status != null) 'status': status,
      if (addressSummary != null) 'address_summary': addressSummary,
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (subtotalPiasters != null) 'subtotal_piasters': subtotalPiasters,
      if (deliveryFeePiasters != null)
        'delivery_fee_piasters': deliveryFeePiasters,
      if (packagingFeePiasters != null)
        'packaging_fee_piasters': packagingFeePiasters,
      if (discountPiasters != null) 'discount_piasters': discountPiasters,
      if (totalPiasters != null) 'total_piasters': totalPiasters,
      if (promoCode != null) 'promo_code': promoCode,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrdersCompanion copyWith({
    Value<String>? id,
    Value<String>? orderNumber,
    Value<String>? status,
    Value<String>? addressSummary,
    Value<String>? paymentMethod,
    Value<int>? subtotalPiasters,
    Value<int>? deliveryFeePiasters,
    Value<int>? packagingFeePiasters,
    Value<int>? discountPiasters,
    Value<int>? totalPiasters,
    Value<String?>? promoCode,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return OrdersCompanion(
      id: id ?? this.id,
      orderNumber: orderNumber ?? this.orderNumber,
      status: status ?? this.status,
      addressSummary: addressSummary ?? this.addressSummary,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      subtotalPiasters: subtotalPiasters ?? this.subtotalPiasters,
      deliveryFeePiasters: deliveryFeePiasters ?? this.deliveryFeePiasters,
      packagingFeePiasters: packagingFeePiasters ?? this.packagingFeePiasters,
      discountPiasters: discountPiasters ?? this.discountPiasters,
      totalPiasters: totalPiasters ?? this.totalPiasters,
      promoCode: promoCode ?? this.promoCode,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (orderNumber.present) {
      map['order_number'] = Variable<String>(orderNumber.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (addressSummary.present) {
      map['address_summary'] = Variable<String>(addressSummary.value);
    }
    if (paymentMethod.present) {
      map['payment_method'] = Variable<String>(paymentMethod.value);
    }
    if (subtotalPiasters.present) {
      map['subtotal_piasters'] = Variable<int>(subtotalPiasters.value);
    }
    if (deliveryFeePiasters.present) {
      map['delivery_fee_piasters'] = Variable<int>(deliveryFeePiasters.value);
    }
    if (packagingFeePiasters.present) {
      map['packaging_fee_piasters'] = Variable<int>(packagingFeePiasters.value);
    }
    if (discountPiasters.present) {
      map['discount_piasters'] = Variable<int>(discountPiasters.value);
    }
    if (totalPiasters.present) {
      map['total_piasters'] = Variable<int>(totalPiasters.value);
    }
    if (promoCode.present) {
      map['promo_code'] = Variable<String>(promoCode.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrdersCompanion(')
          ..write('id: $id, ')
          ..write('orderNumber: $orderNumber, ')
          ..write('status: $status, ')
          ..write('addressSummary: $addressSummary, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('subtotalPiasters: $subtotalPiasters, ')
          ..write('deliveryFeePiasters: $deliveryFeePiasters, ')
          ..write('packagingFeePiasters: $packagingFeePiasters, ')
          ..write('discountPiasters: $discountPiasters, ')
          ..write('totalPiasters: $totalPiasters, ')
          ..write('promoCode: $promoCode, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderItemsTable extends OrderItems
    with TableInfo<$OrderItemsTable, OrderItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _orderIdMeta = const VerificationMeta(
    'orderId',
  );
  @override
  late final GeneratedColumn<String> orderId = GeneratedColumn<String>(
    'order_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES orders (id)',
    ),
  );
  static const VerificationMeta _productIdMeta = const VerificationMeta(
    'productId',
  );
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
    'product_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _productNameMeta = const VerificationMeta(
    'productName',
  );
  @override
  late final GeneratedColumn<String> productName = GeneratedColumn<String>(
    'product_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitLabelMeta = const VerificationMeta(
    'unitLabel',
  );
  @override
  late final GeneratedColumn<String> unitLabel = GeneratedColumn<String>(
    'unit_label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageAssetMeta = const VerificationMeta(
    'imageAsset',
  );
  @override
  late final GeneratedColumn<String> imageAsset = GeneratedColumn<String>(
    'image_asset',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitPricePiastersMeta = const VerificationMeta(
    'unitPricePiasters',
  );
  @override
  late final GeneratedColumn<int> unitPricePiasters = GeneratedColumn<int>(
    'unit_price_piasters',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    orderId,
    productId,
    productName,
    unitLabel,
    imageAsset,
    unitPricePiasters,
    quantity,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<OrderItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('order_id')) {
      context.handle(
        _orderIdMeta,
        orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta),
      );
    } else if (isInserting) {
      context.missing(_orderIdMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(
        _productIdMeta,
        productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta),
      );
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('product_name')) {
      context.handle(
        _productNameMeta,
        productName.isAcceptableOrUnknown(
          data['product_name']!,
          _productNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_productNameMeta);
    }
    if (data.containsKey('unit_label')) {
      context.handle(
        _unitLabelMeta,
        unitLabel.isAcceptableOrUnknown(data['unit_label']!, _unitLabelMeta),
      );
    } else if (isInserting) {
      context.missing(_unitLabelMeta);
    }
    if (data.containsKey('image_asset')) {
      context.handle(
        _imageAssetMeta,
        imageAsset.isAcceptableOrUnknown(data['image_asset']!, _imageAssetMeta),
      );
    } else if (isInserting) {
      context.missing(_imageAssetMeta);
    }
    if (data.containsKey('unit_price_piasters')) {
      context.handle(
        _unitPricePiastersMeta,
        unitPricePiasters.isAcceptableOrUnknown(
          data['unit_price_piasters']!,
          _unitPricePiastersMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_unitPricePiastersMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrderItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderItem(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      orderId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}order_id'],
      )!,
      productId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_id'],
      )!,
      productName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}product_name'],
      )!,
      unitLabel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unit_label'],
      )!,
      imageAsset: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_asset'],
      )!,
      unitPricePiasters: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}unit_price_piasters'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}quantity'],
      )!,
    );
  }

  @override
  $OrderItemsTable createAlias(String alias) {
    return $OrderItemsTable(attachedDatabase, alias);
  }
}

class OrderItem extends DataClass implements Insertable<OrderItem> {
  final int id;
  final String orderId;
  final String productId;
  final String productName;
  final String unitLabel;
  final String imageAsset;
  final int unitPricePiasters;
  final int quantity;
  const OrderItem({
    required this.id,
    required this.orderId,
    required this.productId,
    required this.productName,
    required this.unitLabel,
    required this.imageAsset,
    required this.unitPricePiasters,
    required this.quantity,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['order_id'] = Variable<String>(orderId);
    map['product_id'] = Variable<String>(productId);
    map['product_name'] = Variable<String>(productName);
    map['unit_label'] = Variable<String>(unitLabel);
    map['image_asset'] = Variable<String>(imageAsset);
    map['unit_price_piasters'] = Variable<int>(unitPricePiasters);
    map['quantity'] = Variable<int>(quantity);
    return map;
  }

  OrderItemsCompanion toCompanion(bool nullToAbsent) {
    return OrderItemsCompanion(
      id: Value(id),
      orderId: Value(orderId),
      productId: Value(productId),
      productName: Value(productName),
      unitLabel: Value(unitLabel),
      imageAsset: Value(imageAsset),
      unitPricePiasters: Value(unitPricePiasters),
      quantity: Value(quantity),
    );
  }

  factory OrderItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderItem(
      id: serializer.fromJson<int>(json['id']),
      orderId: serializer.fromJson<String>(json['orderId']),
      productId: serializer.fromJson<String>(json['productId']),
      productName: serializer.fromJson<String>(json['productName']),
      unitLabel: serializer.fromJson<String>(json['unitLabel']),
      imageAsset: serializer.fromJson<String>(json['imageAsset']),
      unitPricePiasters: serializer.fromJson<int>(json['unitPricePiasters']),
      quantity: serializer.fromJson<int>(json['quantity']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'orderId': serializer.toJson<String>(orderId),
      'productId': serializer.toJson<String>(productId),
      'productName': serializer.toJson<String>(productName),
      'unitLabel': serializer.toJson<String>(unitLabel),
      'imageAsset': serializer.toJson<String>(imageAsset),
      'unitPricePiasters': serializer.toJson<int>(unitPricePiasters),
      'quantity': serializer.toJson<int>(quantity),
    };
  }

  OrderItem copyWith({
    int? id,
    String? orderId,
    String? productId,
    String? productName,
    String? unitLabel,
    String? imageAsset,
    int? unitPricePiasters,
    int? quantity,
  }) => OrderItem(
    id: id ?? this.id,
    orderId: orderId ?? this.orderId,
    productId: productId ?? this.productId,
    productName: productName ?? this.productName,
    unitLabel: unitLabel ?? this.unitLabel,
    imageAsset: imageAsset ?? this.imageAsset,
    unitPricePiasters: unitPricePiasters ?? this.unitPricePiasters,
    quantity: quantity ?? this.quantity,
  );
  OrderItem copyWithCompanion(OrderItemsCompanion data) {
    return OrderItem(
      id: data.id.present ? data.id.value : this.id,
      orderId: data.orderId.present ? data.orderId.value : this.orderId,
      productId: data.productId.present ? data.productId.value : this.productId,
      productName: data.productName.present
          ? data.productName.value
          : this.productName,
      unitLabel: data.unitLabel.present ? data.unitLabel.value : this.unitLabel,
      imageAsset: data.imageAsset.present
          ? data.imageAsset.value
          : this.imageAsset,
      unitPricePiasters: data.unitPricePiasters.present
          ? data.unitPricePiasters.value
          : this.unitPricePiasters,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OrderItem(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('productId: $productId, ')
          ..write('productName: $productName, ')
          ..write('unitLabel: $unitLabel, ')
          ..write('imageAsset: $imageAsset, ')
          ..write('unitPricePiasters: $unitPricePiasters, ')
          ..write('quantity: $quantity')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    orderId,
    productId,
    productName,
    unitLabel,
    imageAsset,
    unitPricePiasters,
    quantity,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderItem &&
          other.id == this.id &&
          other.orderId == this.orderId &&
          other.productId == this.productId &&
          other.productName == this.productName &&
          other.unitLabel == this.unitLabel &&
          other.imageAsset == this.imageAsset &&
          other.unitPricePiasters == this.unitPricePiasters &&
          other.quantity == this.quantity);
}

class OrderItemsCompanion extends UpdateCompanion<OrderItem> {
  final Value<int> id;
  final Value<String> orderId;
  final Value<String> productId;
  final Value<String> productName;
  final Value<String> unitLabel;
  final Value<String> imageAsset;
  final Value<int> unitPricePiasters;
  final Value<int> quantity;
  const OrderItemsCompanion({
    this.id = const Value.absent(),
    this.orderId = const Value.absent(),
    this.productId = const Value.absent(),
    this.productName = const Value.absent(),
    this.unitLabel = const Value.absent(),
    this.imageAsset = const Value.absent(),
    this.unitPricePiasters = const Value.absent(),
    this.quantity = const Value.absent(),
  });
  OrderItemsCompanion.insert({
    this.id = const Value.absent(),
    required String orderId,
    required String productId,
    required String productName,
    required String unitLabel,
    required String imageAsset,
    required int unitPricePiasters,
    required int quantity,
  }) : orderId = Value(orderId),
       productId = Value(productId),
       productName = Value(productName),
       unitLabel = Value(unitLabel),
       imageAsset = Value(imageAsset),
       unitPricePiasters = Value(unitPricePiasters),
       quantity = Value(quantity);
  static Insertable<OrderItem> custom({
    Expression<int>? id,
    Expression<String>? orderId,
    Expression<String>? productId,
    Expression<String>? productName,
    Expression<String>? unitLabel,
    Expression<String>? imageAsset,
    Expression<int>? unitPricePiasters,
    Expression<int>? quantity,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (orderId != null) 'order_id': orderId,
      if (productId != null) 'product_id': productId,
      if (productName != null) 'product_name': productName,
      if (unitLabel != null) 'unit_label': unitLabel,
      if (imageAsset != null) 'image_asset': imageAsset,
      if (unitPricePiasters != null) 'unit_price_piasters': unitPricePiasters,
      if (quantity != null) 'quantity': quantity,
    });
  }

  OrderItemsCompanion copyWith({
    Value<int>? id,
    Value<String>? orderId,
    Value<String>? productId,
    Value<String>? productName,
    Value<String>? unitLabel,
    Value<String>? imageAsset,
    Value<int>? unitPricePiasters,
    Value<int>? quantity,
  }) {
    return OrderItemsCompanion(
      id: id ?? this.id,
      orderId: orderId ?? this.orderId,
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      unitLabel: unitLabel ?? this.unitLabel,
      imageAsset: imageAsset ?? this.imageAsset,
      unitPricePiasters: unitPricePiasters ?? this.unitPricePiasters,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (orderId.present) {
      map['order_id'] = Variable<String>(orderId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (productName.present) {
      map['product_name'] = Variable<String>(productName.value);
    }
    if (unitLabel.present) {
      map['unit_label'] = Variable<String>(unitLabel.value);
    }
    if (imageAsset.present) {
      map['image_asset'] = Variable<String>(imageAsset.value);
    }
    if (unitPricePiasters.present) {
      map['unit_price_piasters'] = Variable<int>(unitPricePiasters.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderItemsCompanion(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('productId: $productId, ')
          ..write('productName: $productName, ')
          ..write('unitLabel: $unitLabel, ')
          ..write('imageAsset: $imageAsset, ')
          ..write('unitPricePiasters: $unitPricePiasters, ')
          ..write('quantity: $quantity')
          ..write(')'))
        .toString();
  }
}

class $WalletAccountsTable extends WalletAccounts
    with TableInfo<$WalletAccountsTable, WalletAccount> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WalletAccountsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _balancePiastersMeta = const VerificationMeta(
    'balancePiasters',
  );
  @override
  late final GeneratedColumn<int> balancePiasters = GeneratedColumn<int>(
    'balance_piasters',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _isPrivilegeActiveMeta = const VerificationMeta(
    'isPrivilegeActive',
  );
  @override
  late final GeneratedColumn<bool> isPrivilegeActive = GeneratedColumn<bool>(
    'is_privilege_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_privilege_active" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _cardLast4Meta = const VerificationMeta(
    'cardLast4',
  );
  @override
  late final GeneratedColumn<String> cardLast4 = GeneratedColumn<String>(
    'card_last4',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cardHolderMeta = const VerificationMeta(
    'cardHolder',
  );
  @override
  late final GeneratedColumn<String> cardHolder = GeneratedColumn<String>(
    'card_holder',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cardExpiryMeta = const VerificationMeta(
    'cardExpiry',
  );
  @override
  late final GeneratedColumn<String> cardExpiry = GeneratedColumn<String>(
    'card_expiry',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cashbackPercentMeta = const VerificationMeta(
    'cashbackPercent',
  );
  @override
  late final GeneratedColumn<int> cashbackPercent = GeneratedColumn<int>(
    'cashback_percent',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(5),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    balancePiasters,
    isPrivilegeActive,
    cardLast4,
    cardHolder,
    cardExpiry,
    cashbackPercent,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'wallet_accounts';
  @override
  VerificationContext validateIntegrity(
    Insertable<WalletAccount> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('balance_piasters')) {
      context.handle(
        _balancePiastersMeta,
        balancePiasters.isAcceptableOrUnknown(
          data['balance_piasters']!,
          _balancePiastersMeta,
        ),
      );
    }
    if (data.containsKey('is_privilege_active')) {
      context.handle(
        _isPrivilegeActiveMeta,
        isPrivilegeActive.isAcceptableOrUnknown(
          data['is_privilege_active']!,
          _isPrivilegeActiveMeta,
        ),
      );
    }
    if (data.containsKey('card_last4')) {
      context.handle(
        _cardLast4Meta,
        cardLast4.isAcceptableOrUnknown(data['card_last4']!, _cardLast4Meta),
      );
    } else if (isInserting) {
      context.missing(_cardLast4Meta);
    }
    if (data.containsKey('card_holder')) {
      context.handle(
        _cardHolderMeta,
        cardHolder.isAcceptableOrUnknown(data['card_holder']!, _cardHolderMeta),
      );
    } else if (isInserting) {
      context.missing(_cardHolderMeta);
    }
    if (data.containsKey('card_expiry')) {
      context.handle(
        _cardExpiryMeta,
        cardExpiry.isAcceptableOrUnknown(data['card_expiry']!, _cardExpiryMeta),
      );
    } else if (isInserting) {
      context.missing(_cardExpiryMeta);
    }
    if (data.containsKey('cashback_percent')) {
      context.handle(
        _cashbackPercentMeta,
        cashbackPercent.isAcceptableOrUnknown(
          data['cashback_percent']!,
          _cashbackPercentMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WalletAccount map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WalletAccount(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      balancePiasters: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}balance_piasters'],
      )!,
      isPrivilegeActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_privilege_active'],
      )!,
      cardLast4: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}card_last4'],
      )!,
      cardHolder: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}card_holder'],
      )!,
      cardExpiry: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}card_expiry'],
      )!,
      cashbackPercent: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cashback_percent'],
      )!,
    );
  }

  @override
  $WalletAccountsTable createAlias(String alias) {
    return $WalletAccountsTable(attachedDatabase, alias);
  }
}

class WalletAccount extends DataClass implements Insertable<WalletAccount> {
  final String id;
  final int balancePiasters;
  final bool isPrivilegeActive;
  final String cardLast4;
  final String cardHolder;
  final String cardExpiry;
  final int cashbackPercent;
  const WalletAccount({
    required this.id,
    required this.balancePiasters,
    required this.isPrivilegeActive,
    required this.cardLast4,
    required this.cardHolder,
    required this.cardExpiry,
    required this.cashbackPercent,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['balance_piasters'] = Variable<int>(balancePiasters);
    map['is_privilege_active'] = Variable<bool>(isPrivilegeActive);
    map['card_last4'] = Variable<String>(cardLast4);
    map['card_holder'] = Variable<String>(cardHolder);
    map['card_expiry'] = Variable<String>(cardExpiry);
    map['cashback_percent'] = Variable<int>(cashbackPercent);
    return map;
  }

  WalletAccountsCompanion toCompanion(bool nullToAbsent) {
    return WalletAccountsCompanion(
      id: Value(id),
      balancePiasters: Value(balancePiasters),
      isPrivilegeActive: Value(isPrivilegeActive),
      cardLast4: Value(cardLast4),
      cardHolder: Value(cardHolder),
      cardExpiry: Value(cardExpiry),
      cashbackPercent: Value(cashbackPercent),
    );
  }

  factory WalletAccount.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WalletAccount(
      id: serializer.fromJson<String>(json['id']),
      balancePiasters: serializer.fromJson<int>(json['balancePiasters']),
      isPrivilegeActive: serializer.fromJson<bool>(json['isPrivilegeActive']),
      cardLast4: serializer.fromJson<String>(json['cardLast4']),
      cardHolder: serializer.fromJson<String>(json['cardHolder']),
      cardExpiry: serializer.fromJson<String>(json['cardExpiry']),
      cashbackPercent: serializer.fromJson<int>(json['cashbackPercent']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'balancePiasters': serializer.toJson<int>(balancePiasters),
      'isPrivilegeActive': serializer.toJson<bool>(isPrivilegeActive),
      'cardLast4': serializer.toJson<String>(cardLast4),
      'cardHolder': serializer.toJson<String>(cardHolder),
      'cardExpiry': serializer.toJson<String>(cardExpiry),
      'cashbackPercent': serializer.toJson<int>(cashbackPercent),
    };
  }

  WalletAccount copyWith({
    String? id,
    int? balancePiasters,
    bool? isPrivilegeActive,
    String? cardLast4,
    String? cardHolder,
    String? cardExpiry,
    int? cashbackPercent,
  }) => WalletAccount(
    id: id ?? this.id,
    balancePiasters: balancePiasters ?? this.balancePiasters,
    isPrivilegeActive: isPrivilegeActive ?? this.isPrivilegeActive,
    cardLast4: cardLast4 ?? this.cardLast4,
    cardHolder: cardHolder ?? this.cardHolder,
    cardExpiry: cardExpiry ?? this.cardExpiry,
    cashbackPercent: cashbackPercent ?? this.cashbackPercent,
  );
  WalletAccount copyWithCompanion(WalletAccountsCompanion data) {
    return WalletAccount(
      id: data.id.present ? data.id.value : this.id,
      balancePiasters: data.balancePiasters.present
          ? data.balancePiasters.value
          : this.balancePiasters,
      isPrivilegeActive: data.isPrivilegeActive.present
          ? data.isPrivilegeActive.value
          : this.isPrivilegeActive,
      cardLast4: data.cardLast4.present ? data.cardLast4.value : this.cardLast4,
      cardHolder: data.cardHolder.present
          ? data.cardHolder.value
          : this.cardHolder,
      cardExpiry: data.cardExpiry.present
          ? data.cardExpiry.value
          : this.cardExpiry,
      cashbackPercent: data.cashbackPercent.present
          ? data.cashbackPercent.value
          : this.cashbackPercent,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WalletAccount(')
          ..write('id: $id, ')
          ..write('balancePiasters: $balancePiasters, ')
          ..write('isPrivilegeActive: $isPrivilegeActive, ')
          ..write('cardLast4: $cardLast4, ')
          ..write('cardHolder: $cardHolder, ')
          ..write('cardExpiry: $cardExpiry, ')
          ..write('cashbackPercent: $cashbackPercent')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    balancePiasters,
    isPrivilegeActive,
    cardLast4,
    cardHolder,
    cardExpiry,
    cashbackPercent,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WalletAccount &&
          other.id == this.id &&
          other.balancePiasters == this.balancePiasters &&
          other.isPrivilegeActive == this.isPrivilegeActive &&
          other.cardLast4 == this.cardLast4 &&
          other.cardHolder == this.cardHolder &&
          other.cardExpiry == this.cardExpiry &&
          other.cashbackPercent == this.cashbackPercent);
}

class WalletAccountsCompanion extends UpdateCompanion<WalletAccount> {
  final Value<String> id;
  final Value<int> balancePiasters;
  final Value<bool> isPrivilegeActive;
  final Value<String> cardLast4;
  final Value<String> cardHolder;
  final Value<String> cardExpiry;
  final Value<int> cashbackPercent;
  final Value<int> rowid;
  const WalletAccountsCompanion({
    this.id = const Value.absent(),
    this.balancePiasters = const Value.absent(),
    this.isPrivilegeActive = const Value.absent(),
    this.cardLast4 = const Value.absent(),
    this.cardHolder = const Value.absent(),
    this.cardExpiry = const Value.absent(),
    this.cashbackPercent = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WalletAccountsCompanion.insert({
    required String id,
    this.balancePiasters = const Value.absent(),
    this.isPrivilegeActive = const Value.absent(),
    required String cardLast4,
    required String cardHolder,
    required String cardExpiry,
    this.cashbackPercent = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       cardLast4 = Value(cardLast4),
       cardHolder = Value(cardHolder),
       cardExpiry = Value(cardExpiry);
  static Insertable<WalletAccount> custom({
    Expression<String>? id,
    Expression<int>? balancePiasters,
    Expression<bool>? isPrivilegeActive,
    Expression<String>? cardLast4,
    Expression<String>? cardHolder,
    Expression<String>? cardExpiry,
    Expression<int>? cashbackPercent,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (balancePiasters != null) 'balance_piasters': balancePiasters,
      if (isPrivilegeActive != null) 'is_privilege_active': isPrivilegeActive,
      if (cardLast4 != null) 'card_last4': cardLast4,
      if (cardHolder != null) 'card_holder': cardHolder,
      if (cardExpiry != null) 'card_expiry': cardExpiry,
      if (cashbackPercent != null) 'cashback_percent': cashbackPercent,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WalletAccountsCompanion copyWith({
    Value<String>? id,
    Value<int>? balancePiasters,
    Value<bool>? isPrivilegeActive,
    Value<String>? cardLast4,
    Value<String>? cardHolder,
    Value<String>? cardExpiry,
    Value<int>? cashbackPercent,
    Value<int>? rowid,
  }) {
    return WalletAccountsCompanion(
      id: id ?? this.id,
      balancePiasters: balancePiasters ?? this.balancePiasters,
      isPrivilegeActive: isPrivilegeActive ?? this.isPrivilegeActive,
      cardLast4: cardLast4 ?? this.cardLast4,
      cardHolder: cardHolder ?? this.cardHolder,
      cardExpiry: cardExpiry ?? this.cardExpiry,
      cashbackPercent: cashbackPercent ?? this.cashbackPercent,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (balancePiasters.present) {
      map['balance_piasters'] = Variable<int>(balancePiasters.value);
    }
    if (isPrivilegeActive.present) {
      map['is_privilege_active'] = Variable<bool>(isPrivilegeActive.value);
    }
    if (cardLast4.present) {
      map['card_last4'] = Variable<String>(cardLast4.value);
    }
    if (cardHolder.present) {
      map['card_holder'] = Variable<String>(cardHolder.value);
    }
    if (cardExpiry.present) {
      map['card_expiry'] = Variable<String>(cardExpiry.value);
    }
    if (cashbackPercent.present) {
      map['cashback_percent'] = Variable<int>(cashbackPercent.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WalletAccountsCompanion(')
          ..write('id: $id, ')
          ..write('balancePiasters: $balancePiasters, ')
          ..write('isPrivilegeActive: $isPrivilegeActive, ')
          ..write('cardLast4: $cardLast4, ')
          ..write('cardHolder: $cardHolder, ')
          ..write('cardExpiry: $cardExpiry, ')
          ..write('cashbackPercent: $cashbackPercent, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $WalletTransactionsTable extends WalletTransactions
    with TableInfo<$WalletTransactionsTable, WalletTransaction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WalletTransactionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subtitleMeta = const VerificationMeta(
    'subtitle',
  );
  @override
  late final GeneratedColumn<String> subtitle = GeneratedColumn<String>(
    'subtitle',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _amountPiastersMeta = const VerificationMeta(
    'amountPiasters',
  );
  @override
  late final GeneratedColumn<int> amountPiasters = GeneratedColumn<int>(
    'amount_piasters',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusLabelMeta = const VerificationMeta(
    'statusLabel',
  );
  @override
  late final GeneratedColumn<String> statusLabel = GeneratedColumn<String>(
    'status_label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _referenceCodeMeta = const VerificationMeta(
    'referenceCode',
  );
  @override
  late final GeneratedColumn<String> referenceCode = GeneratedColumn<String>(
    'reference_code',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    subtitle,
    amountPiasters,
    type,
    statusLabel,
    referenceCode,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'wallet_transactions';
  @override
  VerificationContext validateIntegrity(
    Insertable<WalletTransaction> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('subtitle')) {
      context.handle(
        _subtitleMeta,
        subtitle.isAcceptableOrUnknown(data['subtitle']!, _subtitleMeta),
      );
    } else if (isInserting) {
      context.missing(_subtitleMeta);
    }
    if (data.containsKey('amount_piasters')) {
      context.handle(
        _amountPiastersMeta,
        amountPiasters.isAcceptableOrUnknown(
          data['amount_piasters']!,
          _amountPiastersMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_amountPiastersMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('status_label')) {
      context.handle(
        _statusLabelMeta,
        statusLabel.isAcceptableOrUnknown(
          data['status_label']!,
          _statusLabelMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_statusLabelMeta);
    }
    if (data.containsKey('reference_code')) {
      context.handle(
        _referenceCodeMeta,
        referenceCode.isAcceptableOrUnknown(
          data['reference_code']!,
          _referenceCodeMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WalletTransaction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WalletTransaction(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      subtitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subtitle'],
      )!,
      amountPiasters: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amount_piasters'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      statusLabel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status_label'],
      )!,
      referenceCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reference_code'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $WalletTransactionsTable createAlias(String alias) {
    return $WalletTransactionsTable(attachedDatabase, alias);
  }
}

class WalletTransaction extends DataClass
    implements Insertable<WalletTransaction> {
  final String id;
  final String title;
  final String subtitle;
  final int amountPiasters;
  final String type;
  final String statusLabel;
  final String? referenceCode;
  final DateTime createdAt;
  const WalletTransaction({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.amountPiasters,
    required this.type,
    required this.statusLabel,
    this.referenceCode,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['subtitle'] = Variable<String>(subtitle);
    map['amount_piasters'] = Variable<int>(amountPiasters);
    map['type'] = Variable<String>(type);
    map['status_label'] = Variable<String>(statusLabel);
    if (!nullToAbsent || referenceCode != null) {
      map['reference_code'] = Variable<String>(referenceCode);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  WalletTransactionsCompanion toCompanion(bool nullToAbsent) {
    return WalletTransactionsCompanion(
      id: Value(id),
      title: Value(title),
      subtitle: Value(subtitle),
      amountPiasters: Value(amountPiasters),
      type: Value(type),
      statusLabel: Value(statusLabel),
      referenceCode: referenceCode == null && nullToAbsent
          ? const Value.absent()
          : Value(referenceCode),
      createdAt: Value(createdAt),
    );
  }

  factory WalletTransaction.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WalletTransaction(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      subtitle: serializer.fromJson<String>(json['subtitle']),
      amountPiasters: serializer.fromJson<int>(json['amountPiasters']),
      type: serializer.fromJson<String>(json['type']),
      statusLabel: serializer.fromJson<String>(json['statusLabel']),
      referenceCode: serializer.fromJson<String?>(json['referenceCode']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'subtitle': serializer.toJson<String>(subtitle),
      'amountPiasters': serializer.toJson<int>(amountPiasters),
      'type': serializer.toJson<String>(type),
      'statusLabel': serializer.toJson<String>(statusLabel),
      'referenceCode': serializer.toJson<String?>(referenceCode),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  WalletTransaction copyWith({
    String? id,
    String? title,
    String? subtitle,
    int? amountPiasters,
    String? type,
    String? statusLabel,
    Value<String?> referenceCode = const Value.absent(),
    DateTime? createdAt,
  }) => WalletTransaction(
    id: id ?? this.id,
    title: title ?? this.title,
    subtitle: subtitle ?? this.subtitle,
    amountPiasters: amountPiasters ?? this.amountPiasters,
    type: type ?? this.type,
    statusLabel: statusLabel ?? this.statusLabel,
    referenceCode: referenceCode.present
        ? referenceCode.value
        : this.referenceCode,
    createdAt: createdAt ?? this.createdAt,
  );
  WalletTransaction copyWithCompanion(WalletTransactionsCompanion data) {
    return WalletTransaction(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      subtitle: data.subtitle.present ? data.subtitle.value : this.subtitle,
      amountPiasters: data.amountPiasters.present
          ? data.amountPiasters.value
          : this.amountPiasters,
      type: data.type.present ? data.type.value : this.type,
      statusLabel: data.statusLabel.present
          ? data.statusLabel.value
          : this.statusLabel,
      referenceCode: data.referenceCode.present
          ? data.referenceCode.value
          : this.referenceCode,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WalletTransaction(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('amountPiasters: $amountPiasters, ')
          ..write('type: $type, ')
          ..write('statusLabel: $statusLabel, ')
          ..write('referenceCode: $referenceCode, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    subtitle,
    amountPiasters,
    type,
    statusLabel,
    referenceCode,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WalletTransaction &&
          other.id == this.id &&
          other.title == this.title &&
          other.subtitle == this.subtitle &&
          other.amountPiasters == this.amountPiasters &&
          other.type == this.type &&
          other.statusLabel == this.statusLabel &&
          other.referenceCode == this.referenceCode &&
          other.createdAt == this.createdAt);
}

class WalletTransactionsCompanion extends UpdateCompanion<WalletTransaction> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> subtitle;
  final Value<int> amountPiasters;
  final Value<String> type;
  final Value<String> statusLabel;
  final Value<String?> referenceCode;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const WalletTransactionsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.amountPiasters = const Value.absent(),
    this.type = const Value.absent(),
    this.statusLabel = const Value.absent(),
    this.referenceCode = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  WalletTransactionsCompanion.insert({
    required String id,
    required String title,
    required String subtitle,
    required int amountPiasters,
    required String type,
    required String statusLabel,
    this.referenceCode = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       subtitle = Value(subtitle),
       amountPiasters = Value(amountPiasters),
       type = Value(type),
       statusLabel = Value(statusLabel);
  static Insertable<WalletTransaction> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? subtitle,
    Expression<int>? amountPiasters,
    Expression<String>? type,
    Expression<String>? statusLabel,
    Expression<String>? referenceCode,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (subtitle != null) 'subtitle': subtitle,
      if (amountPiasters != null) 'amount_piasters': amountPiasters,
      if (type != null) 'type': type,
      if (statusLabel != null) 'status_label': statusLabel,
      if (referenceCode != null) 'reference_code': referenceCode,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  WalletTransactionsCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? subtitle,
    Value<int>? amountPiasters,
    Value<String>? type,
    Value<String>? statusLabel,
    Value<String?>? referenceCode,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return WalletTransactionsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      amountPiasters: amountPiasters ?? this.amountPiasters,
      type: type ?? this.type,
      statusLabel: statusLabel ?? this.statusLabel,
      referenceCode: referenceCode ?? this.referenceCode,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (subtitle.present) {
      map['subtitle'] = Variable<String>(subtitle.value);
    }
    if (amountPiasters.present) {
      map['amount_piasters'] = Variable<int>(amountPiasters.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (statusLabel.present) {
      map['status_label'] = Variable<String>(statusLabel.value);
    }
    if (referenceCode.present) {
      map['reference_code'] = Variable<String>(referenceCode.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WalletTransactionsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('amountPiasters: $amountPiasters, ')
          ..write('type: $type, ')
          ..write('statusLabel: $statusLabel, ')
          ..write('referenceCode: $referenceCode, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SavedCardsTable extends SavedCards
    with TableInfo<$SavedCardsTable, SavedCard> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SavedCardsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
    'brand',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _last4Meta = const VerificationMeta('last4');
  @override
  late final GeneratedColumn<String> last4 = GeneratedColumn<String>(
    'last4',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _expiryMeta = const VerificationMeta('expiry');
  @override
  late final GeneratedColumn<String> expiry = GeneratedColumn<String>(
    'expiry',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _holderNameMeta = const VerificationMeta(
    'holderName',
  );
  @override
  late final GeneratedColumn<String> holderName = GeneratedColumn<String>(
    'holder_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isDefaultMeta = const VerificationMeta(
    'isDefault',
  );
  @override
  late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>(
    'is_default',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_default" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    brand,
    last4,
    expiry,
    holderName,
    isDefault,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'saved_cards';
  @override
  VerificationContext validateIntegrity(
    Insertable<SavedCard> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('brand')) {
      context.handle(
        _brandMeta,
        brand.isAcceptableOrUnknown(data['brand']!, _brandMeta),
      );
    } else if (isInserting) {
      context.missing(_brandMeta);
    }
    if (data.containsKey('last4')) {
      context.handle(
        _last4Meta,
        last4.isAcceptableOrUnknown(data['last4']!, _last4Meta),
      );
    } else if (isInserting) {
      context.missing(_last4Meta);
    }
    if (data.containsKey('expiry')) {
      context.handle(
        _expiryMeta,
        expiry.isAcceptableOrUnknown(data['expiry']!, _expiryMeta),
      );
    } else if (isInserting) {
      context.missing(_expiryMeta);
    }
    if (data.containsKey('holder_name')) {
      context.handle(
        _holderNameMeta,
        holderName.isAcceptableOrUnknown(data['holder_name']!, _holderNameMeta),
      );
    } else if (isInserting) {
      context.missing(_holderNameMeta);
    }
    if (data.containsKey('is_default')) {
      context.handle(
        _isDefaultMeta,
        isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SavedCard map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SavedCard(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      brand: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}brand'],
      )!,
      last4: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last4'],
      )!,
      expiry: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}expiry'],
      )!,
      holderName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}holder_name'],
      )!,
      isDefault: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_default'],
      )!,
    );
  }

  @override
  $SavedCardsTable createAlias(String alias) {
    return $SavedCardsTable(attachedDatabase, alias);
  }
}

class SavedCard extends DataClass implements Insertable<SavedCard> {
  final String id;
  final String brand;
  final String last4;
  final String expiry;
  final String holderName;
  final bool isDefault;
  const SavedCard({
    required this.id,
    required this.brand,
    required this.last4,
    required this.expiry,
    required this.holderName,
    required this.isDefault,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['brand'] = Variable<String>(brand);
    map['last4'] = Variable<String>(last4);
    map['expiry'] = Variable<String>(expiry);
    map['holder_name'] = Variable<String>(holderName);
    map['is_default'] = Variable<bool>(isDefault);
    return map;
  }

  SavedCardsCompanion toCompanion(bool nullToAbsent) {
    return SavedCardsCompanion(
      id: Value(id),
      brand: Value(brand),
      last4: Value(last4),
      expiry: Value(expiry),
      holderName: Value(holderName),
      isDefault: Value(isDefault),
    );
  }

  factory SavedCard.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SavedCard(
      id: serializer.fromJson<String>(json['id']),
      brand: serializer.fromJson<String>(json['brand']),
      last4: serializer.fromJson<String>(json['last4']),
      expiry: serializer.fromJson<String>(json['expiry']),
      holderName: serializer.fromJson<String>(json['holderName']),
      isDefault: serializer.fromJson<bool>(json['isDefault']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'brand': serializer.toJson<String>(brand),
      'last4': serializer.toJson<String>(last4),
      'expiry': serializer.toJson<String>(expiry),
      'holderName': serializer.toJson<String>(holderName),
      'isDefault': serializer.toJson<bool>(isDefault),
    };
  }

  SavedCard copyWith({
    String? id,
    String? brand,
    String? last4,
    String? expiry,
    String? holderName,
    bool? isDefault,
  }) => SavedCard(
    id: id ?? this.id,
    brand: brand ?? this.brand,
    last4: last4 ?? this.last4,
    expiry: expiry ?? this.expiry,
    holderName: holderName ?? this.holderName,
    isDefault: isDefault ?? this.isDefault,
  );
  SavedCard copyWithCompanion(SavedCardsCompanion data) {
    return SavedCard(
      id: data.id.present ? data.id.value : this.id,
      brand: data.brand.present ? data.brand.value : this.brand,
      last4: data.last4.present ? data.last4.value : this.last4,
      expiry: data.expiry.present ? data.expiry.value : this.expiry,
      holderName: data.holderName.present
          ? data.holderName.value
          : this.holderName,
      isDefault: data.isDefault.present ? data.isDefault.value : this.isDefault,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SavedCard(')
          ..write('id: $id, ')
          ..write('brand: $brand, ')
          ..write('last4: $last4, ')
          ..write('expiry: $expiry, ')
          ..write('holderName: $holderName, ')
          ..write('isDefault: $isDefault')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, brand, last4, expiry, holderName, isDefault);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SavedCard &&
          other.id == this.id &&
          other.brand == this.brand &&
          other.last4 == this.last4 &&
          other.expiry == this.expiry &&
          other.holderName == this.holderName &&
          other.isDefault == this.isDefault);
}

class SavedCardsCompanion extends UpdateCompanion<SavedCard> {
  final Value<String> id;
  final Value<String> brand;
  final Value<String> last4;
  final Value<String> expiry;
  final Value<String> holderName;
  final Value<bool> isDefault;
  final Value<int> rowid;
  const SavedCardsCompanion({
    this.id = const Value.absent(),
    this.brand = const Value.absent(),
    this.last4 = const Value.absent(),
    this.expiry = const Value.absent(),
    this.holderName = const Value.absent(),
    this.isDefault = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SavedCardsCompanion.insert({
    required String id,
    required String brand,
    required String last4,
    required String expiry,
    required String holderName,
    this.isDefault = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       brand = Value(brand),
       last4 = Value(last4),
       expiry = Value(expiry),
       holderName = Value(holderName);
  static Insertable<SavedCard> custom({
    Expression<String>? id,
    Expression<String>? brand,
    Expression<String>? last4,
    Expression<String>? expiry,
    Expression<String>? holderName,
    Expression<bool>? isDefault,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (brand != null) 'brand': brand,
      if (last4 != null) 'last4': last4,
      if (expiry != null) 'expiry': expiry,
      if (holderName != null) 'holder_name': holderName,
      if (isDefault != null) 'is_default': isDefault,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SavedCardsCompanion copyWith({
    Value<String>? id,
    Value<String>? brand,
    Value<String>? last4,
    Value<String>? expiry,
    Value<String>? holderName,
    Value<bool>? isDefault,
    Value<int>? rowid,
  }) {
    return SavedCardsCompanion(
      id: id ?? this.id,
      brand: brand ?? this.brand,
      last4: last4 ?? this.last4,
      expiry: expiry ?? this.expiry,
      holderName: holderName ?? this.holderName,
      isDefault: isDefault ?? this.isDefault,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (last4.present) {
      map['last4'] = Variable<String>(last4.value);
    }
    if (expiry.present) {
      map['expiry'] = Variable<String>(expiry.value);
    }
    if (holderName.present) {
      map['holder_name'] = Variable<String>(holderName.value);
    }
    if (isDefault.present) {
      map['is_default'] = Variable<bool>(isDefault.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SavedCardsCompanion(')
          ..write('id: $id, ')
          ..write('brand: $brand, ')
          ..write('last4: $last4, ')
          ..write('expiry: $expiry, ')
          ..write('holderName: $holderName, ')
          ..write('isDefault: $isDefault, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PromoCodesTable extends PromoCodes
    with TableInfo<$PromoCodesTable, PromoCode> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PromoCodesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
    'code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _discountTypeMeta = const VerificationMeta(
    'discountType',
  );
  @override
  late final GeneratedColumn<String> discountType = GeneratedColumn<String>(
    'discount_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _discountValueMeta = const VerificationMeta(
    'discountValue',
  );
  @override
  late final GeneratedColumn<int> discountValue = GeneratedColumn<int>(
    'discount_value',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _minOrderPiastersMeta = const VerificationMeta(
    'minOrderPiasters',
  );
  @override
  late final GeneratedColumn<int> minOrderPiasters = GeneratedColumn<int>(
    'min_order_piasters',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    code,
    title,
    description,
    discountType,
    discountValue,
    minOrderPiasters,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'promo_codes';
  @override
  VerificationContext validateIntegrity(
    Insertable<PromoCode> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
        _codeMeta,
        code.isAcceptableOrUnknown(data['code']!, _codeMeta),
      );
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('discount_type')) {
      context.handle(
        _discountTypeMeta,
        discountType.isAcceptableOrUnknown(
          data['discount_type']!,
          _discountTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_discountTypeMeta);
    }
    if (data.containsKey('discount_value')) {
      context.handle(
        _discountValueMeta,
        discountValue.isAcceptableOrUnknown(
          data['discount_value']!,
          _discountValueMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_discountValueMeta);
    }
    if (data.containsKey('min_order_piasters')) {
      context.handle(
        _minOrderPiastersMeta,
        minOrderPiasters.isAcceptableOrUnknown(
          data['min_order_piasters']!,
          _minOrderPiastersMeta,
        ),
      );
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  PromoCode map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PromoCode(
      code: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}code'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      discountType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}discount_type'],
      )!,
      discountValue: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}discount_value'],
      )!,
      minOrderPiasters: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}min_order_piasters'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $PromoCodesTable createAlias(String alias) {
    return $PromoCodesTable(attachedDatabase, alias);
  }
}

class PromoCode extends DataClass implements Insertable<PromoCode> {
  final String code;
  final String title;
  final String description;
  final String discountType;
  final int discountValue;
  final int minOrderPiasters;
  final bool isActive;
  const PromoCode({
    required this.code,
    required this.title,
    required this.description,
    required this.discountType,
    required this.discountValue,
    required this.minOrderPiasters,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['code'] = Variable<String>(code);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['discount_type'] = Variable<String>(discountType);
    map['discount_value'] = Variable<int>(discountValue);
    map['min_order_piasters'] = Variable<int>(minOrderPiasters);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  PromoCodesCompanion toCompanion(bool nullToAbsent) {
    return PromoCodesCompanion(
      code: Value(code),
      title: Value(title),
      description: Value(description),
      discountType: Value(discountType),
      discountValue: Value(discountValue),
      minOrderPiasters: Value(minOrderPiasters),
      isActive: Value(isActive),
    );
  }

  factory PromoCode.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PromoCode(
      code: serializer.fromJson<String>(json['code']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      discountType: serializer.fromJson<String>(json['discountType']),
      discountValue: serializer.fromJson<int>(json['discountValue']),
      minOrderPiasters: serializer.fromJson<int>(json['minOrderPiasters']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'discountType': serializer.toJson<String>(discountType),
      'discountValue': serializer.toJson<int>(discountValue),
      'minOrderPiasters': serializer.toJson<int>(minOrderPiasters),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  PromoCode copyWith({
    String? code,
    String? title,
    String? description,
    String? discountType,
    int? discountValue,
    int? minOrderPiasters,
    bool? isActive,
  }) => PromoCode(
    code: code ?? this.code,
    title: title ?? this.title,
    description: description ?? this.description,
    discountType: discountType ?? this.discountType,
    discountValue: discountValue ?? this.discountValue,
    minOrderPiasters: minOrderPiasters ?? this.minOrderPiasters,
    isActive: isActive ?? this.isActive,
  );
  PromoCode copyWithCompanion(PromoCodesCompanion data) {
    return PromoCode(
      code: data.code.present ? data.code.value : this.code,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      discountType: data.discountType.present
          ? data.discountType.value
          : this.discountType,
      discountValue: data.discountValue.present
          ? data.discountValue.value
          : this.discountValue,
      minOrderPiasters: data.minOrderPiasters.present
          ? data.minOrderPiasters.value
          : this.minOrderPiasters,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PromoCode(')
          ..write('code: $code, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('discountType: $discountType, ')
          ..write('discountValue: $discountValue, ')
          ..write('minOrderPiasters: $minOrderPiasters, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    code,
    title,
    description,
    discountType,
    discountValue,
    minOrderPiasters,
    isActive,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PromoCode &&
          other.code == this.code &&
          other.title == this.title &&
          other.description == this.description &&
          other.discountType == this.discountType &&
          other.discountValue == this.discountValue &&
          other.minOrderPiasters == this.minOrderPiasters &&
          other.isActive == this.isActive);
}

class PromoCodesCompanion extends UpdateCompanion<PromoCode> {
  final Value<String> code;
  final Value<String> title;
  final Value<String> description;
  final Value<String> discountType;
  final Value<int> discountValue;
  final Value<int> minOrderPiasters;
  final Value<bool> isActive;
  final Value<int> rowid;
  const PromoCodesCompanion({
    this.code = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.discountType = const Value.absent(),
    this.discountValue = const Value.absent(),
    this.minOrderPiasters = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PromoCodesCompanion.insert({
    required String code,
    required String title,
    required String description,
    required String discountType,
    required int discountValue,
    this.minOrderPiasters = const Value.absent(),
    this.isActive = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : code = Value(code),
       title = Value(title),
       description = Value(description),
       discountType = Value(discountType),
       discountValue = Value(discountValue);
  static Insertable<PromoCode> custom({
    Expression<String>? code,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? discountType,
    Expression<int>? discountValue,
    Expression<int>? minOrderPiasters,
    Expression<bool>? isActive,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (discountType != null) 'discount_type': discountType,
      if (discountValue != null) 'discount_value': discountValue,
      if (minOrderPiasters != null) 'min_order_piasters': minOrderPiasters,
      if (isActive != null) 'is_active': isActive,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PromoCodesCompanion copyWith({
    Value<String>? code,
    Value<String>? title,
    Value<String>? description,
    Value<String>? discountType,
    Value<int>? discountValue,
    Value<int>? minOrderPiasters,
    Value<bool>? isActive,
    Value<int>? rowid,
  }) {
    return PromoCodesCompanion(
      code: code ?? this.code,
      title: title ?? this.title,
      description: description ?? this.description,
      discountType: discountType ?? this.discountType,
      discountValue: discountValue ?? this.discountValue,
      minOrderPiasters: minOrderPiasters ?? this.minOrderPiasters,
      isActive: isActive ?? this.isActive,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (discountType.present) {
      map['discount_type'] = Variable<String>(discountType.value);
    }
    if (discountValue.present) {
      map['discount_value'] = Variable<int>(discountValue.value);
    }
    if (minOrderPiasters.present) {
      map['min_order_piasters'] = Variable<int>(minOrderPiasters.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PromoCodesCompanion(')
          ..write('code: $code, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('discountType: $discountType, ')
          ..write('discountValue: $discountValue, ')
          ..write('minOrderPiasters: $minOrderPiasters, ')
          ..write('isActive: $isActive, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserProfilesTable extends UserProfiles
    with TableInfo<$UserProfilesTable, UserProfile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserProfilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fullNameMeta = const VerificationMeta(
    'fullName',
  );
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
    'full_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tierLabelMeta = const VerificationMeta(
    'tierLabel',
  );
  @override
  late final GeneratedColumn<String> tierLabel = GeneratedColumn<String>(
    'tier_label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _avatarAssetMeta = const VerificationMeta(
    'avatarAsset',
  );
  @override
  late final GeneratedColumn<String> avatarAsset = GeneratedColumn<String>(
    'avatar_asset',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _hasMorningPassMeta = const VerificationMeta(
    'hasMorningPass',
  );
  @override
  late final GeneratedColumn<bool> hasMorningPass = GeneratedColumn<bool>(
    'has_morning_pass',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_morning_pass" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _rewardsCountMeta = const VerificationMeta(
    'rewardsCount',
  );
  @override
  late final GeneratedColumn<int> rewardsCount = GeneratedColumn<int>(
    'rewards_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _referralCodeMeta = const VerificationMeta(
    'referralCode',
  );
  @override
  late final GeneratedColumn<String> referralCode = GeneratedColumn<String>(
    'referral_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    fullName,
    phone,
    tierLabel,
    avatarAsset,
    hasMorningPass,
    rewardsCount,
    referralCode,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_profiles';
  @override
  VerificationContext validateIntegrity(
    Insertable<UserProfile> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(
        _fullNameMeta,
        fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta),
      );
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('tier_label')) {
      context.handle(
        _tierLabelMeta,
        tierLabel.isAcceptableOrUnknown(data['tier_label']!, _tierLabelMeta),
      );
    } else if (isInserting) {
      context.missing(_tierLabelMeta);
    }
    if (data.containsKey('avatar_asset')) {
      context.handle(
        _avatarAssetMeta,
        avatarAsset.isAcceptableOrUnknown(
          data['avatar_asset']!,
          _avatarAssetMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_avatarAssetMeta);
    }
    if (data.containsKey('has_morning_pass')) {
      context.handle(
        _hasMorningPassMeta,
        hasMorningPass.isAcceptableOrUnknown(
          data['has_morning_pass']!,
          _hasMorningPassMeta,
        ),
      );
    }
    if (data.containsKey('rewards_count')) {
      context.handle(
        _rewardsCountMeta,
        rewardsCount.isAcceptableOrUnknown(
          data['rewards_count']!,
          _rewardsCountMeta,
        ),
      );
    }
    if (data.containsKey('referral_code')) {
      context.handle(
        _referralCodeMeta,
        referralCode.isAcceptableOrUnknown(
          data['referral_code']!,
          _referralCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_referralCodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserProfile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserProfile(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      fullName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}full_name'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      )!,
      tierLabel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tier_label'],
      )!,
      avatarAsset: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}avatar_asset'],
      )!,
      hasMorningPass: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_morning_pass'],
      )!,
      rewardsCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}rewards_count'],
      )!,
      referralCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}referral_code'],
      )!,
    );
  }

  @override
  $UserProfilesTable createAlias(String alias) {
    return $UserProfilesTable(attachedDatabase, alias);
  }
}

class UserProfile extends DataClass implements Insertable<UserProfile> {
  final String id;
  final String fullName;
  final String phone;
  final String tierLabel;
  final String avatarAsset;
  final bool hasMorningPass;
  final int rewardsCount;
  final String referralCode;
  const UserProfile({
    required this.id,
    required this.fullName,
    required this.phone,
    required this.tierLabel,
    required this.avatarAsset,
    required this.hasMorningPass,
    required this.rewardsCount,
    required this.referralCode,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['full_name'] = Variable<String>(fullName);
    map['phone'] = Variable<String>(phone);
    map['tier_label'] = Variable<String>(tierLabel);
    map['avatar_asset'] = Variable<String>(avatarAsset);
    map['has_morning_pass'] = Variable<bool>(hasMorningPass);
    map['rewards_count'] = Variable<int>(rewardsCount);
    map['referral_code'] = Variable<String>(referralCode);
    return map;
  }

  UserProfilesCompanion toCompanion(bool nullToAbsent) {
    return UserProfilesCompanion(
      id: Value(id),
      fullName: Value(fullName),
      phone: Value(phone),
      tierLabel: Value(tierLabel),
      avatarAsset: Value(avatarAsset),
      hasMorningPass: Value(hasMorningPass),
      rewardsCount: Value(rewardsCount),
      referralCode: Value(referralCode),
    );
  }

  factory UserProfile.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserProfile(
      id: serializer.fromJson<String>(json['id']),
      fullName: serializer.fromJson<String>(json['fullName']),
      phone: serializer.fromJson<String>(json['phone']),
      tierLabel: serializer.fromJson<String>(json['tierLabel']),
      avatarAsset: serializer.fromJson<String>(json['avatarAsset']),
      hasMorningPass: serializer.fromJson<bool>(json['hasMorningPass']),
      rewardsCount: serializer.fromJson<int>(json['rewardsCount']),
      referralCode: serializer.fromJson<String>(json['referralCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'fullName': serializer.toJson<String>(fullName),
      'phone': serializer.toJson<String>(phone),
      'tierLabel': serializer.toJson<String>(tierLabel),
      'avatarAsset': serializer.toJson<String>(avatarAsset),
      'hasMorningPass': serializer.toJson<bool>(hasMorningPass),
      'rewardsCount': serializer.toJson<int>(rewardsCount),
      'referralCode': serializer.toJson<String>(referralCode),
    };
  }

  UserProfile copyWith({
    String? id,
    String? fullName,
    String? phone,
    String? tierLabel,
    String? avatarAsset,
    bool? hasMorningPass,
    int? rewardsCount,
    String? referralCode,
  }) => UserProfile(
    id: id ?? this.id,
    fullName: fullName ?? this.fullName,
    phone: phone ?? this.phone,
    tierLabel: tierLabel ?? this.tierLabel,
    avatarAsset: avatarAsset ?? this.avatarAsset,
    hasMorningPass: hasMorningPass ?? this.hasMorningPass,
    rewardsCount: rewardsCount ?? this.rewardsCount,
    referralCode: referralCode ?? this.referralCode,
  );
  UserProfile copyWithCompanion(UserProfilesCompanion data) {
    return UserProfile(
      id: data.id.present ? data.id.value : this.id,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      phone: data.phone.present ? data.phone.value : this.phone,
      tierLabel: data.tierLabel.present ? data.tierLabel.value : this.tierLabel,
      avatarAsset: data.avatarAsset.present
          ? data.avatarAsset.value
          : this.avatarAsset,
      hasMorningPass: data.hasMorningPass.present
          ? data.hasMorningPass.value
          : this.hasMorningPass,
      rewardsCount: data.rewardsCount.present
          ? data.rewardsCount.value
          : this.rewardsCount,
      referralCode: data.referralCode.present
          ? data.referralCode.value
          : this.referralCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserProfile(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('phone: $phone, ')
          ..write('tierLabel: $tierLabel, ')
          ..write('avatarAsset: $avatarAsset, ')
          ..write('hasMorningPass: $hasMorningPass, ')
          ..write('rewardsCount: $rewardsCount, ')
          ..write('referralCode: $referralCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    fullName,
    phone,
    tierLabel,
    avatarAsset,
    hasMorningPass,
    rewardsCount,
    referralCode,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserProfile &&
          other.id == this.id &&
          other.fullName == this.fullName &&
          other.phone == this.phone &&
          other.tierLabel == this.tierLabel &&
          other.avatarAsset == this.avatarAsset &&
          other.hasMorningPass == this.hasMorningPass &&
          other.rewardsCount == this.rewardsCount &&
          other.referralCode == this.referralCode);
}

class UserProfilesCompanion extends UpdateCompanion<UserProfile> {
  final Value<String> id;
  final Value<String> fullName;
  final Value<String> phone;
  final Value<String> tierLabel;
  final Value<String> avatarAsset;
  final Value<bool> hasMorningPass;
  final Value<int> rewardsCount;
  final Value<String> referralCode;
  final Value<int> rowid;
  const UserProfilesCompanion({
    this.id = const Value.absent(),
    this.fullName = const Value.absent(),
    this.phone = const Value.absent(),
    this.tierLabel = const Value.absent(),
    this.avatarAsset = const Value.absent(),
    this.hasMorningPass = const Value.absent(),
    this.rewardsCount = const Value.absent(),
    this.referralCode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserProfilesCompanion.insert({
    required String id,
    required String fullName,
    required String phone,
    required String tierLabel,
    required String avatarAsset,
    this.hasMorningPass = const Value.absent(),
    this.rewardsCount = const Value.absent(),
    required String referralCode,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       fullName = Value(fullName),
       phone = Value(phone),
       tierLabel = Value(tierLabel),
       avatarAsset = Value(avatarAsset),
       referralCode = Value(referralCode);
  static Insertable<UserProfile> custom({
    Expression<String>? id,
    Expression<String>? fullName,
    Expression<String>? phone,
    Expression<String>? tierLabel,
    Expression<String>? avatarAsset,
    Expression<bool>? hasMorningPass,
    Expression<int>? rewardsCount,
    Expression<String>? referralCode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fullName != null) 'full_name': fullName,
      if (phone != null) 'phone': phone,
      if (tierLabel != null) 'tier_label': tierLabel,
      if (avatarAsset != null) 'avatar_asset': avatarAsset,
      if (hasMorningPass != null) 'has_morning_pass': hasMorningPass,
      if (rewardsCount != null) 'rewards_count': rewardsCount,
      if (referralCode != null) 'referral_code': referralCode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserProfilesCompanion copyWith({
    Value<String>? id,
    Value<String>? fullName,
    Value<String>? phone,
    Value<String>? tierLabel,
    Value<String>? avatarAsset,
    Value<bool>? hasMorningPass,
    Value<int>? rewardsCount,
    Value<String>? referralCode,
    Value<int>? rowid,
  }) {
    return UserProfilesCompanion(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      phone: phone ?? this.phone,
      tierLabel: tierLabel ?? this.tierLabel,
      avatarAsset: avatarAsset ?? this.avatarAsset,
      hasMorningPass: hasMorningPass ?? this.hasMorningPass,
      rewardsCount: rewardsCount ?? this.rewardsCount,
      referralCode: referralCode ?? this.referralCode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (tierLabel.present) {
      map['tier_label'] = Variable<String>(tierLabel.value);
    }
    if (avatarAsset.present) {
      map['avatar_asset'] = Variable<String>(avatarAsset.value);
    }
    if (hasMorningPass.present) {
      map['has_morning_pass'] = Variable<bool>(hasMorningPass.value);
    }
    if (rewardsCount.present) {
      map['rewards_count'] = Variable<int>(rewardsCount.value);
    }
    if (referralCode.present) {
      map['referral_code'] = Variable<String>(referralCode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserProfilesCompanion(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('phone: $phone, ')
          ..write('tierLabel: $tierLabel, ')
          ..write('avatarAsset: $avatarAsset, ')
          ..write('hasMorningPass: $hasMorningPass, ')
          ..write('rewardsCount: $rewardsCount, ')
          ..write('referralCode: $referralCode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $BrandsTable brands = $BrandsTable(this);
  late final $ProductsTable products = $ProductsTable(this);
  late final $BannersTable banners = $BannersTable(this);
  late final $CartItemsTable cartItems = $CartItemsTable(this);
  late final $FavoritesTable favorites = $FavoritesTable(this);
  late final $AddressesTable addresses = $AddressesTable(this);
  late final $OrdersTable orders = $OrdersTable(this);
  late final $OrderItemsTable orderItems = $OrderItemsTable(this);
  late final $WalletAccountsTable walletAccounts = $WalletAccountsTable(this);
  late final $WalletTransactionsTable walletTransactions =
      $WalletTransactionsTable(this);
  late final $SavedCardsTable savedCards = $SavedCardsTable(this);
  late final $PromoCodesTable promoCodes = $PromoCodesTable(this);
  late final $UserProfilesTable userProfiles = $UserProfilesTable(this);
  late final CatalogDao catalogDao = CatalogDao(this as AppDatabase);
  late final CartDao cartDao = CartDao(this as AppDatabase);
  late final OrdersDao ordersDao = OrdersDao(this as AppDatabase);
  late final WalletDao walletDao = WalletDao(this as AppDatabase);
  late final AccountDao accountDao = AccountDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    categories,
    brands,
    products,
    banners,
    cartItems,
    favorites,
    addresses,
    orders,
    orderItems,
    walletAccounts,
    walletTransactions,
    savedCards,
    promoCodes,
    userProfiles,
  ];
}

typedef $$CategoriesTableCreateCompanionBuilder = CategoriesCompanion Function({
  required String id,
  required String name,
  required String subtitle,
  required String imageAsset,
  required String bannerTitle,
  required String bannerSubtitle,
  required String bannerBadge,
  required String bannerDiscountText,
  Value<int> sortOrder,
  Value<bool> isExploreFeatured,
  Value<bool> isTrending,
  Value<int> rowid,
});
typedef $$CategoriesTableUpdateCompanionBuilder = CategoriesCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> subtitle,
  Value<String> imageAsset,
  Value<String> bannerTitle,
  Value<String> bannerSubtitle,
  Value<String> bannerBadge,
  Value<String> bannerDiscountText,
  Value<int> sortOrder,
  Value<bool> isExploreFeatured,
  Value<bool> isTrending,
  Value<int> rowid,
});

final class $$CategoriesTableReferences
    extends BaseReferences<_$AppDatabase, $CategoriesTable, Category> {
  $$CategoriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ProductsTable, List<Product>> _productsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.products,
    aliasName: 'categories__id__products__category_id',
  );

  $$ProductsTableProcessedTableManager get productsRefs {
    final manager = $$ProductsTableTableManager(
      $_db,
      $_db.products,
    ).filter((f) => f.categoryId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_productsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageAsset => $composableBuilder(
    column: $table.imageAsset,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bannerTitle => $composableBuilder(
    column: $table.bannerTitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bannerSubtitle => $composableBuilder(
    column: $table.bannerSubtitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bannerBadge => $composableBuilder(
    column: $table.bannerBadge,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bannerDiscountText => $composableBuilder(
    column: $table.bannerDiscountText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isExploreFeatured => $composableBuilder(
    column: $table.isExploreFeatured,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isTrending => $composableBuilder(
    column: $table.isTrending,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> productsRefs(
    Expression<bool> Function($$ProductsTableFilterComposer f) f,
  ) {
    final $$ProductsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableFilterComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageAsset => $composableBuilder(
    column: $table.imageAsset,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bannerTitle => $composableBuilder(
    column: $table.bannerTitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bannerSubtitle => $composableBuilder(
    column: $table.bannerSubtitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bannerBadge => $composableBuilder(
    column: $table.bannerBadge,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bannerDiscountText => $composableBuilder(
    column: $table.bannerDiscountText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isExploreFeatured => $composableBuilder(
    column: $table.isExploreFeatured,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isTrending => $composableBuilder(
    column: $table.isTrending,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get subtitle =>
      $composableBuilder(column: $table.subtitle, builder: (column) => column);

  GeneratedColumn<String> get imageAsset => $composableBuilder(
    column: $table.imageAsset,
    builder: (column) => column,
  );

  GeneratedColumn<String> get bannerTitle => $composableBuilder(
    column: $table.bannerTitle,
    builder: (column) => column,
  );

  GeneratedColumn<String> get bannerSubtitle => $composableBuilder(
    column: $table.bannerSubtitle,
    builder: (column) => column,
  );

  GeneratedColumn<String> get bannerBadge => $composableBuilder(
    column: $table.bannerBadge,
    builder: (column) => column,
  );

  GeneratedColumn<String> get bannerDiscountText => $composableBuilder(
    column: $table.bannerDiscountText,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  GeneratedColumn<bool> get isExploreFeatured => $composableBuilder(
    column: $table.isExploreFeatured,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isTrending => $composableBuilder(
    column: $table.isTrending,
    builder: (column) => column,
  );

  Expression<T> productsRefs<T extends Object>(
    Expression<T> Function($$ProductsTableAnnotationComposer a) f,
  ) {
    final $$ProductsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableAnnotationComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CategoriesTable,
          Category,
          $$CategoriesTableFilterComposer,
          $$CategoriesTableOrderingComposer,
          $$CategoriesTableAnnotationComposer,
          $$CategoriesTableCreateCompanionBuilder,
          $$CategoriesTableUpdateCompanionBuilder,
          (Category, $$CategoriesTableReferences),
          Category,
          PrefetchHooks Function({bool productsRefs})
        > {
  $$CategoriesTableTableManager(_$AppDatabase db, $CategoriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> subtitle = const Value.absent(),
                Value<String> imageAsset = const Value.absent(),
                Value<String> bannerTitle = const Value.absent(),
                Value<String> bannerSubtitle = const Value.absent(),
                Value<String> bannerBadge = const Value.absent(),
                Value<String> bannerDiscountText = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<bool> isExploreFeatured = const Value.absent(),
                Value<bool> isTrending = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CategoriesCompanion(
                id: id,
                name: name,
                subtitle: subtitle,
                imageAsset: imageAsset,
                bannerTitle: bannerTitle,
                bannerSubtitle: bannerSubtitle,
                bannerBadge: bannerBadge,
                bannerDiscountText: bannerDiscountText,
                sortOrder: sortOrder,
                isExploreFeatured: isExploreFeatured,
                isTrending: isTrending,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String subtitle,
                required String imageAsset,
                required String bannerTitle,
                required String bannerSubtitle,
                required String bannerBadge,
                required String bannerDiscountText,
                Value<int> sortOrder = const Value.absent(),
                Value<bool> isExploreFeatured = const Value.absent(),
                Value<bool> isTrending = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CategoriesCompanion.insert(
                id: id,
                name: name,
                subtitle: subtitle,
                imageAsset: imageAsset,
                bannerTitle: bannerTitle,
                bannerSubtitle: bannerSubtitle,
                bannerBadge: bannerBadge,
                bannerDiscountText: bannerDiscountText,
                sortOrder: sortOrder,
                isExploreFeatured: isExploreFeatured,
                isTrending: isTrending,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$CategoriesTable, Category>(table),
                  $$CategoriesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({productsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (productsRefs) db.products],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (productsRefs)
                    await $_getPrefetchedDataByColumns<
                      Category,
                      $CategoriesTable,
                      Product,
                      $ProductsTable
                    >(
                      currentTable: table,
                      referencedTable: $$CategoriesTableReferences
                          ._productsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$CategoriesTableReferences(
                            db,
                            table,
                            p0,
                          ).productsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'category_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$CategoriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CategoriesTable,
      Category,
      $$CategoriesTableFilterComposer,
      $$CategoriesTableOrderingComposer,
      $$CategoriesTableAnnotationComposer,
      $$CategoriesTableCreateCompanionBuilder,
      $$CategoriesTableUpdateCompanionBuilder,
      (Category, $$CategoriesTableReferences),
      Category,
      PrefetchHooks Function({bool productsRefs})
    >;
typedef $$BrandsTableCreateCompanionBuilder = BrandsCompanion Function({
  required String id,
  required String name,
  required String subtitle,
  required int bgColorHex,
  required int textColorHex,
  Value<int> sortOrder,
  Value<int> rowid,
});
typedef $$BrandsTableUpdateCompanionBuilder = BrandsCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> subtitle,
  Value<int> bgColorHex,
  Value<int> textColorHex,
  Value<int> sortOrder,
  Value<int> rowid,
});

final class $$BrandsTableReferences
    extends BaseReferences<_$AppDatabase, $BrandsTable, Brand> {
  $$BrandsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ProductsTable, List<Product>> _productsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.products,
    aliasName: 'brands__id__products__brand_id',
  );

  $$ProductsTableProcessedTableManager get productsRefs {
    final manager = $$ProductsTableTableManager(
      $_db,
      $_db.products,
    ).filter((f) => f.brandId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_productsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$BrandsTableFilterComposer
    extends Composer<_$AppDatabase, $BrandsTable> {
  $$BrandsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get bgColorHex => $composableBuilder(
    column: $table.bgColorHex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get textColorHex => $composableBuilder(
    column: $table.textColorHex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> productsRefs(
    Expression<bool> Function($$ProductsTableFilterComposer f) f,
  ) {
    final $$ProductsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.brandId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableFilterComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$BrandsTableOrderingComposer
    extends Composer<_$AppDatabase, $BrandsTable> {
  $$BrandsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get bgColorHex => $composableBuilder(
    column: $table.bgColorHex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get textColorHex => $composableBuilder(
    column: $table.textColorHex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BrandsTableAnnotationComposer
    extends Composer<_$AppDatabase, $BrandsTable> {
  $$BrandsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get subtitle =>
      $composableBuilder(column: $table.subtitle, builder: (column) => column);

  GeneratedColumn<int> get bgColorHex => $composableBuilder(
    column: $table.bgColorHex,
    builder: (column) => column,
  );

  GeneratedColumn<int> get textColorHex => $composableBuilder(
    column: $table.textColorHex,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  Expression<T> productsRefs<T extends Object>(
    Expression<T> Function($$ProductsTableAnnotationComposer a) f,
  ) {
    final $$ProductsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.brandId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableAnnotationComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$BrandsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BrandsTable,
          Brand,
          $$BrandsTableFilterComposer,
          $$BrandsTableOrderingComposer,
          $$BrandsTableAnnotationComposer,
          $$BrandsTableCreateCompanionBuilder,
          $$BrandsTableUpdateCompanionBuilder,
          (Brand, $$BrandsTableReferences),
          Brand,
          PrefetchHooks Function({bool productsRefs})
        > {
  $$BrandsTableTableManager(_$AppDatabase db, $BrandsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BrandsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BrandsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BrandsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> subtitle = const Value.absent(),
                Value<int> bgColorHex = const Value.absent(),
                Value<int> textColorHex = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BrandsCompanion(
                id: id,
                name: name,
                subtitle: subtitle,
                bgColorHex: bgColorHex,
                textColorHex: textColorHex,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String subtitle,
                required int bgColorHex,
                required int textColorHex,
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BrandsCompanion.insert(
                id: id,
                name: name,
                subtitle: subtitle,
                bgColorHex: bgColorHex,
                textColorHex: textColorHex,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$BrandsTable, Brand>(table),
                  $$BrandsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({productsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (productsRefs) db.products],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (productsRefs)
                    await $_getPrefetchedDataByColumns<
                      Brand,
                      $BrandsTable,
                      Product,
                      $ProductsTable
                    >(
                      currentTable: table,
                      referencedTable: $$BrandsTableReferences
                          ._productsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$BrandsTableReferences(db, table, p0).productsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'brand_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$BrandsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BrandsTable,
      Brand,
      $$BrandsTableFilterComposer,
      $$BrandsTableOrderingComposer,
      $$BrandsTableAnnotationComposer,
      $$BrandsTableCreateCompanionBuilder,
      $$BrandsTableUpdateCompanionBuilder,
      (Brand, $$BrandsTableReferences),
      Brand,
      PrefetchHooks Function({bool productsRefs})
    >;
typedef $$ProductsTableCreateCompanionBuilder = ProductsCompanion Function({
  required String id,
  required String name,
  required String subtitle,
  required String description,
  required String categoryId,
  required String brandId,
  required String farmLabel,
  required String unitLabel,
  required int pricePiasters,
  Value<int?> originalPricePiasters,
  Value<String?> badgeText,
  Value<String> badgeTone,
  required String imageAsset,
  Value<double> rating,
  Value<int> reviewCount,
  Value<int> stockCount,
  Value<bool> isSpotlight,
  Value<bool> isSpecialOffer,
  Value<bool> isNewArrival,
  Value<bool> isPopular,
  Value<bool> isPairingSuggestion,
  Value<int> rowid,
});
typedef $$ProductsTableUpdateCompanionBuilder = ProductsCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<String> subtitle,
  Value<String> description,
  Value<String> categoryId,
  Value<String> brandId,
  Value<String> farmLabel,
  Value<String> unitLabel,
  Value<int> pricePiasters,
  Value<int?> originalPricePiasters,
  Value<String?> badgeText,
  Value<String> badgeTone,
  Value<String> imageAsset,
  Value<double> rating,
  Value<int> reviewCount,
  Value<int> stockCount,
  Value<bool> isSpotlight,
  Value<bool> isSpecialOffer,
  Value<bool> isNewArrival,
  Value<bool> isPopular,
  Value<bool> isPairingSuggestion,
  Value<int> rowid,
});

final class $$ProductsTableReferences
    extends BaseReferences<_$AppDatabase, $ProductsTable, Product> {
  $$ProductsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CategoriesTable _categoryIdTable(_$AppDatabase db) =>
      db.categories.createAlias('products__category_id__categories__id');

  $$CategoriesTableProcessedTableManager get categoryId {
    final $_column = $_itemColumn<String>('category_id')!;

    final manager = $$CategoriesTableTableManager(
      $_db,
      $_db.categories,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $BrandsTable _brandIdTable(_$AppDatabase db) =>
      db.brands.createAlias('products__brand_id__brands__id');

  $$BrandsTableProcessedTableManager get brandId {
    final $_column = $_itemColumn<String>('brand_id')!;

    final manager = $$BrandsTableTableManager(
      $_db,
      $_db.brands,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_brandIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$CartItemsTable, List<CartItem>>
  _cartItemsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.cartItems,
    aliasName: 'products__id__cart_items__product_id',
  );

  $$CartItemsTableProcessedTableManager get cartItemsRefs {
    final manager = $$CartItemsTableTableManager(
      $_db,
      $_db.cartItems,
    ).filter((f) => f.productId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_cartItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$FavoritesTable, List<Favorite>>
  _favoritesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.favorites,
    aliasName: 'products__id__favorites__product_id',
  );

  $$FavoritesTableProcessedTableManager get favoritesRefs {
    final manager = $$FavoritesTableTableManager(
      $_db,
      $_db.favorites,
    ).filter((f) => f.productId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_favoritesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ProductsTableFilterComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get farmLabel => $composableBuilder(
    column: $table.farmLabel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unitLabel => $composableBuilder(
    column: $table.unitLabel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get pricePiasters => $composableBuilder(
    column: $table.pricePiasters,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get originalPricePiasters => $composableBuilder(
    column: $table.originalPricePiasters,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get badgeText => $composableBuilder(
    column: $table.badgeText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get badgeTone => $composableBuilder(
    column: $table.badgeTone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageAsset => $composableBuilder(
    column: $table.imageAsset,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get reviewCount => $composableBuilder(
    column: $table.reviewCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stockCount => $composableBuilder(
    column: $table.stockCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isSpotlight => $composableBuilder(
    column: $table.isSpotlight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isSpecialOffer => $composableBuilder(
    column: $table.isSpecialOffer,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isNewArrival => $composableBuilder(
    column: $table.isNewArrival,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isPopular => $composableBuilder(
    column: $table.isPopular,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isPairingSuggestion => $composableBuilder(
    column: $table.isPairingSuggestion,
    builder: (column) => ColumnFilters(column),
  );

  $$CategoriesTableFilterComposer get categoryId {
    final $$CategoriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableFilterComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$BrandsTableFilterComposer get brandId {
    final $$BrandsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.brandId,
      referencedTable: $db.brands,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BrandsTableFilterComposer(
            $db: $db,
            $table: $db.brands,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> cartItemsRefs(
    Expression<bool> Function($$CartItemsTableFilterComposer f) f,
  ) {
    final $$CartItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.cartItems,
      getReferencedColumn: (t) => t.productId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CartItemsTableFilterComposer(
            $db: $db,
            $table: $db.cartItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> favoritesRefs(
    Expression<bool> Function($$FavoritesTableFilterComposer f) f,
  ) {
    final $$FavoritesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.favorites,
      getReferencedColumn: (t) => t.productId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FavoritesTableFilterComposer(
            $db: $db,
            $table: $db.favorites,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProductsTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get farmLabel => $composableBuilder(
    column: $table.farmLabel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unitLabel => $composableBuilder(
    column: $table.unitLabel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get pricePiasters => $composableBuilder(
    column: $table.pricePiasters,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get originalPricePiasters => $composableBuilder(
    column: $table.originalPricePiasters,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get badgeText => $composableBuilder(
    column: $table.badgeText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get badgeTone => $composableBuilder(
    column: $table.badgeTone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageAsset => $composableBuilder(
    column: $table.imageAsset,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get rating => $composableBuilder(
    column: $table.rating,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get reviewCount => $composableBuilder(
    column: $table.reviewCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stockCount => $composableBuilder(
    column: $table.stockCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isSpotlight => $composableBuilder(
    column: $table.isSpotlight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isSpecialOffer => $composableBuilder(
    column: $table.isSpecialOffer,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isNewArrival => $composableBuilder(
    column: $table.isNewArrival,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isPopular => $composableBuilder(
    column: $table.isPopular,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isPairingSuggestion => $composableBuilder(
    column: $table.isPairingSuggestion,
    builder: (column) => ColumnOrderings(column),
  );

  $$CategoriesTableOrderingComposer get categoryId {
    final $$CategoriesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableOrderingComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$BrandsTableOrderingComposer get brandId {
    final $$BrandsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.brandId,
      referencedTable: $db.brands,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BrandsTableOrderingComposer(
            $db: $db,
            $table: $db.brands,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProductsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductsTable> {
  $$ProductsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get subtitle =>
      $composableBuilder(column: $table.subtitle, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get farmLabel =>
      $composableBuilder(column: $table.farmLabel, builder: (column) => column);

  GeneratedColumn<String> get unitLabel =>
      $composableBuilder(column: $table.unitLabel, builder: (column) => column);

  GeneratedColumn<int> get pricePiasters => $composableBuilder(
    column: $table.pricePiasters,
    builder: (column) => column,
  );

  GeneratedColumn<int> get originalPricePiasters => $composableBuilder(
    column: $table.originalPricePiasters,
    builder: (column) => column,
  );

  GeneratedColumn<String> get badgeText =>
      $composableBuilder(column: $table.badgeText, builder: (column) => column);

  GeneratedColumn<String> get badgeTone =>
      $composableBuilder(column: $table.badgeTone, builder: (column) => column);

  GeneratedColumn<String> get imageAsset => $composableBuilder(
    column: $table.imageAsset,
    builder: (column) => column,
  );

  GeneratedColumn<double> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<int> get reviewCount => $composableBuilder(
    column: $table.reviewCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get stockCount => $composableBuilder(
    column: $table.stockCount,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isSpotlight => $composableBuilder(
    column: $table.isSpotlight,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isSpecialOffer => $composableBuilder(
    column: $table.isSpecialOffer,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isNewArrival => $composableBuilder(
    column: $table.isNewArrival,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isPopular =>
      $composableBuilder(column: $table.isPopular, builder: (column) => column);

  GeneratedColumn<bool> get isPairingSuggestion => $composableBuilder(
    column: $table.isPairingSuggestion,
    builder: (column) => column,
  );

  $$CategoriesTableAnnotationComposer get categoryId {
    final $$CategoriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableAnnotationComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$BrandsTableAnnotationComposer get brandId {
    final $$BrandsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.brandId,
      referencedTable: $db.brands,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$BrandsTableAnnotationComposer(
            $db: $db,
            $table: $db.brands,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> cartItemsRefs<T extends Object>(
    Expression<T> Function($$CartItemsTableAnnotationComposer a) f,
  ) {
    final $$CartItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.cartItems,
      getReferencedColumn: (t) => t.productId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CartItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.cartItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> favoritesRefs<T extends Object>(
    Expression<T> Function($$FavoritesTableAnnotationComposer a) f,
  ) {
    final $$FavoritesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.favorites,
      getReferencedColumn: (t) => t.productId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FavoritesTableAnnotationComposer(
            $db: $db,
            $table: $db.favorites,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProductsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductsTable,
          Product,
          $$ProductsTableFilterComposer,
          $$ProductsTableOrderingComposer,
          $$ProductsTableAnnotationComposer,
          $$ProductsTableCreateCompanionBuilder,
          $$ProductsTableUpdateCompanionBuilder,
          (Product, $$ProductsTableReferences),
          Product,
          PrefetchHooks Function({
            bool categoryId,
            bool brandId,
            bool cartItemsRefs,
            bool favoritesRefs,
          })
        > {
  $$ProductsTableTableManager(_$AppDatabase db, $ProductsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> subtitle = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> categoryId = const Value.absent(),
                Value<String> brandId = const Value.absent(),
                Value<String> farmLabel = const Value.absent(),
                Value<String> unitLabel = const Value.absent(),
                Value<int> pricePiasters = const Value.absent(),
                Value<int?> originalPricePiasters = const Value.absent(),
                Value<String?> badgeText = const Value.absent(),
                Value<String> badgeTone = const Value.absent(),
                Value<String> imageAsset = const Value.absent(),
                Value<double> rating = const Value.absent(),
                Value<int> reviewCount = const Value.absent(),
                Value<int> stockCount = const Value.absent(),
                Value<bool> isSpotlight = const Value.absent(),
                Value<bool> isSpecialOffer = const Value.absent(),
                Value<bool> isNewArrival = const Value.absent(),
                Value<bool> isPopular = const Value.absent(),
                Value<bool> isPairingSuggestion = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductsCompanion(
                id: id,
                name: name,
                subtitle: subtitle,
                description: description,
                categoryId: categoryId,
                brandId: brandId,
                farmLabel: farmLabel,
                unitLabel: unitLabel,
                pricePiasters: pricePiasters,
                originalPricePiasters: originalPricePiasters,
                badgeText: badgeText,
                badgeTone: badgeTone,
                imageAsset: imageAsset,
                rating: rating,
                reviewCount: reviewCount,
                stockCount: stockCount,
                isSpotlight: isSpotlight,
                isSpecialOffer: isSpecialOffer,
                isNewArrival: isNewArrival,
                isPopular: isPopular,
                isPairingSuggestion: isPairingSuggestion,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String subtitle,
                required String description,
                required String categoryId,
                required String brandId,
                required String farmLabel,
                required String unitLabel,
                required int pricePiasters,
                Value<int?> originalPricePiasters = const Value.absent(),
                Value<String?> badgeText = const Value.absent(),
                Value<String> badgeTone = const Value.absent(),
                required String imageAsset,
                Value<double> rating = const Value.absent(),
                Value<int> reviewCount = const Value.absent(),
                Value<int> stockCount = const Value.absent(),
                Value<bool> isSpotlight = const Value.absent(),
                Value<bool> isSpecialOffer = const Value.absent(),
                Value<bool> isNewArrival = const Value.absent(),
                Value<bool> isPopular = const Value.absent(),
                Value<bool> isPairingSuggestion = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ProductsCompanion.insert(
                id: id,
                name: name,
                subtitle: subtitle,
                description: description,
                categoryId: categoryId,
                brandId: brandId,
                farmLabel: farmLabel,
                unitLabel: unitLabel,
                pricePiasters: pricePiasters,
                originalPricePiasters: originalPricePiasters,
                badgeText: badgeText,
                badgeTone: badgeTone,
                imageAsset: imageAsset,
                rating: rating,
                reviewCount: reviewCount,
                stockCount: stockCount,
                isSpotlight: isSpotlight,
                isSpecialOffer: isSpecialOffer,
                isNewArrival: isNewArrival,
                isPopular: isPopular,
                isPairingSuggestion: isPairingSuggestion,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$ProductsTable, Product>(table),
                  $$ProductsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                categoryId = false,
                brandId = false,
                cartItemsRefs = false,
                favoritesRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (cartItemsRefs) db.cartItems,
                    if (favoritesRefs) db.favorites,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (categoryId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.categoryId,
                            referencedTable: $$ProductsTableReferences
                                ._categoryIdTable(db),
                            referencedColumn: $$ProductsTableReferences
                                ._categoryIdTable(db)
                                .id,
                          ) as T;
                        }
                        if (brandId) {
                          state = state.withJoin(
                            currentTable: table,
                            currentColumn: table.brandId,
                            referencedTable: $$ProductsTableReferences
                                ._brandIdTable(db),
                            referencedColumn: $$ProductsTableReferences
                                ._brandIdTable(db)
                                .id,
                          ) as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (cartItemsRefs)
                        await $_getPrefetchedDataByColumns<
                          Product,
                          $ProductsTable,
                          CartItem,
                          $CartItemsTable
                        >(
                          currentTable: table,
                          referencedTable: $$ProductsTableReferences
                              ._cartItemsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProductsTableReferences(
                                db,
                                table,
                                p0,
                              ).cartItemsRefs,
                          currentColumn: 'id',
                          referencedColumn: 'product_id',
                          typedResults: items,
                        ),
                      if (favoritesRefs)
                        await $_getPrefetchedDataByColumns<
                          Product,
                          $ProductsTable,
                          Favorite,
                          $FavoritesTable
                        >(
                          currentTable: table,
                          referencedTable: $$ProductsTableReferences
                              ._favoritesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProductsTableReferences(
                                db,
                                table,
                                p0,
                              ).favoritesRefs,
                          currentColumn: 'id',
                          referencedColumn: 'product_id',
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$ProductsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductsTable,
      Product,
      $$ProductsTableFilterComposer,
      $$ProductsTableOrderingComposer,
      $$ProductsTableAnnotationComposer,
      $$ProductsTableCreateCompanionBuilder,
      $$ProductsTableUpdateCompanionBuilder,
      (Product, $$ProductsTableReferences),
      Product,
      PrefetchHooks Function({
        bool categoryId,
        bool brandId,
        bool cartItemsRefs,
        bool favoritesRefs,
      })
    >;
typedef $$BannersTableCreateCompanionBuilder = BannersCompanion Function({
  required String id,
  required String badgeText,
  required String title,
  Value<String?> subtitle,
  required String ctaLabel,
  required String targetCategoryId,
  required String imageAsset,
  required int gradientStartHex,
  required int gradientEndHex,
  required int ctaTextColorHex,
  required String bannerType,
  Value<int> sortOrder,
  Value<int> rowid,
});
typedef $$BannersTableUpdateCompanionBuilder = BannersCompanion Function({
  Value<String> id,
  Value<String> badgeText,
  Value<String> title,
  Value<String?> subtitle,
  Value<String> ctaLabel,
  Value<String> targetCategoryId,
  Value<String> imageAsset,
  Value<int> gradientStartHex,
  Value<int> gradientEndHex,
  Value<int> ctaTextColorHex,
  Value<String> bannerType,
  Value<int> sortOrder,
  Value<int> rowid,
});

class $$BannersTableFilterComposer
    extends Composer<_$AppDatabase, $BannersTable> {
  $$BannersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get badgeText => $composableBuilder(
    column: $table.badgeText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ctaLabel => $composableBuilder(
    column: $table.ctaLabel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get targetCategoryId => $composableBuilder(
    column: $table.targetCategoryId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageAsset => $composableBuilder(
    column: $table.imageAsset,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get gradientStartHex => $composableBuilder(
    column: $table.gradientStartHex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get gradientEndHex => $composableBuilder(
    column: $table.gradientEndHex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ctaTextColorHex => $composableBuilder(
    column: $table.ctaTextColorHex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bannerType => $composableBuilder(
    column: $table.bannerType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );
}

class $$BannersTableOrderingComposer
    extends Composer<_$AppDatabase, $BannersTable> {
  $$BannersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get badgeText => $composableBuilder(
    column: $table.badgeText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ctaLabel => $composableBuilder(
    column: $table.ctaLabel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get targetCategoryId => $composableBuilder(
    column: $table.targetCategoryId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageAsset => $composableBuilder(
    column: $table.imageAsset,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get gradientStartHex => $composableBuilder(
    column: $table.gradientStartHex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get gradientEndHex => $composableBuilder(
    column: $table.gradientEndHex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ctaTextColorHex => $composableBuilder(
    column: $table.ctaTextColorHex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bannerType => $composableBuilder(
    column: $table.bannerType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$BannersTableAnnotationComposer
    extends Composer<_$AppDatabase, $BannersTable> {
  $$BannersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get badgeText =>
      $composableBuilder(column: $table.badgeText, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get subtitle =>
      $composableBuilder(column: $table.subtitle, builder: (column) => column);

  GeneratedColumn<String> get ctaLabel =>
      $composableBuilder(column: $table.ctaLabel, builder: (column) => column);

  GeneratedColumn<String> get targetCategoryId => $composableBuilder(
    column: $table.targetCategoryId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get imageAsset => $composableBuilder(
    column: $table.imageAsset,
    builder: (column) => column,
  );

  GeneratedColumn<int> get gradientStartHex => $composableBuilder(
    column: $table.gradientStartHex,
    builder: (column) => column,
  );

  GeneratedColumn<int> get gradientEndHex => $composableBuilder(
    column: $table.gradientEndHex,
    builder: (column) => column,
  );

  GeneratedColumn<int> get ctaTextColorHex => $composableBuilder(
    column: $table.ctaTextColorHex,
    builder: (column) => column,
  );

  GeneratedColumn<String> get bannerType => $composableBuilder(
    column: $table.bannerType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);
}

class $$BannersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $BannersTable,
          Banner,
          $$BannersTableFilterComposer,
          $$BannersTableOrderingComposer,
          $$BannersTableAnnotationComposer,
          $$BannersTableCreateCompanionBuilder,
          $$BannersTableUpdateCompanionBuilder,
          (Banner, BaseReferences<_$AppDatabase, $BannersTable, Banner>),
          Banner,
          PrefetchHooks Function()
        > {
  $$BannersTableTableManager(_$AppDatabase db, $BannersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BannersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BannersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BannersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> badgeText = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> subtitle = const Value.absent(),
                Value<String> ctaLabel = const Value.absent(),
                Value<String> targetCategoryId = const Value.absent(),
                Value<String> imageAsset = const Value.absent(),
                Value<int> gradientStartHex = const Value.absent(),
                Value<int> gradientEndHex = const Value.absent(),
                Value<int> ctaTextColorHex = const Value.absent(),
                Value<String> bannerType = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BannersCompanion(
                id: id,
                badgeText: badgeText,
                title: title,
                subtitle: subtitle,
                ctaLabel: ctaLabel,
                targetCategoryId: targetCategoryId,
                imageAsset: imageAsset,
                gradientStartHex: gradientStartHex,
                gradientEndHex: gradientEndHex,
                ctaTextColorHex: ctaTextColorHex,
                bannerType: bannerType,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String badgeText,
                required String title,
                Value<String?> subtitle = const Value.absent(),
                required String ctaLabel,
                required String targetCategoryId,
                required String imageAsset,
                required int gradientStartHex,
                required int gradientEndHex,
                required int ctaTextColorHex,
                required String bannerType,
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => BannersCompanion.insert(
                id: id,
                badgeText: badgeText,
                title: title,
                subtitle: subtitle,
                ctaLabel: ctaLabel,
                targetCategoryId: targetCategoryId,
                imageAsset: imageAsset,
                gradientStartHex: gradientStartHex,
                gradientEndHex: gradientEndHex,
                ctaTextColorHex: ctaTextColorHex,
                bannerType: bannerType,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$BannersTable, Banner>(table),
                  BaseReferences<_$AppDatabase, $BannersTable, Banner>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$BannersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $BannersTable,
      Banner,
      $$BannersTableFilterComposer,
      $$BannersTableOrderingComposer,
      $$BannersTableAnnotationComposer,
      $$BannersTableCreateCompanionBuilder,
      $$BannersTableUpdateCompanionBuilder,
      (Banner, BaseReferences<_$AppDatabase, $BannersTable, Banner>),
      Banner,
      PrefetchHooks Function()
    >;
typedef $$CartItemsTableCreateCompanionBuilder = CartItemsCompanion Function({
  required String productId,
  Value<int> quantity,
  Value<DateTime> addedAt,
  Value<int> rowid,
});
typedef $$CartItemsTableUpdateCompanionBuilder = CartItemsCompanion Function({
  Value<String> productId,
  Value<int> quantity,
  Value<DateTime> addedAt,
  Value<int> rowid,
});

final class $$CartItemsTableReferences
    extends BaseReferences<_$AppDatabase, $CartItemsTable, CartItem> {
  $$CartItemsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProductsTable _productIdTable(_$AppDatabase db) =>
      db.products.createAlias('cart_items__product_id__products__id');

  $$ProductsTableProcessedTableManager get productId {
    final $_column = $_itemColumn<String>('product_id')!;

    final manager = $$ProductsTableTableManager(
      $_db,
      $_db.products,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_productIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$CartItemsTableFilterComposer
    extends Composer<_$AppDatabase, $CartItemsTable> {
  $$CartItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get addedAt => $composableBuilder(
    column: $table.addedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ProductsTableFilterComposer get productId {
    final $$ProductsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableFilterComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CartItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $CartItemsTable> {
  $$CartItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get addedAt => $composableBuilder(
    column: $table.addedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProductsTableOrderingComposer get productId {
    final $$ProductsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableOrderingComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CartItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CartItemsTable> {
  $$CartItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<DateTime> get addedAt =>
      $composableBuilder(column: $table.addedAt, builder: (column) => column);

  $$ProductsTableAnnotationComposer get productId {
    final $$ProductsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableAnnotationComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CartItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CartItemsTable,
          CartItem,
          $$CartItemsTableFilterComposer,
          $$CartItemsTableOrderingComposer,
          $$CartItemsTableAnnotationComposer,
          $$CartItemsTableCreateCompanionBuilder,
          $$CartItemsTableUpdateCompanionBuilder,
          (CartItem, $$CartItemsTableReferences),
          CartItem,
          PrefetchHooks Function({bool productId})
        > {
  $$CartItemsTableTableManager(_$AppDatabase db, $CartItemsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CartItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CartItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CartItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> productId = const Value.absent(),
                Value<int> quantity = const Value.absent(),
                Value<DateTime> addedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CartItemsCompanion(
                productId: productId,
                quantity: quantity,
                addedAt: addedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String productId,
                Value<int> quantity = const Value.absent(),
                Value<DateTime> addedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CartItemsCompanion.insert(
                productId: productId,
                quantity: quantity,
                addedAt: addedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$CartItemsTable, CartItem>(table),
                  $$CartItemsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({productId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (productId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.productId,
                        referencedTable: $$CartItemsTableReferences
                            ._productIdTable(db),
                        referencedColumn: $$CartItemsTableReferences
                            ._productIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$CartItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CartItemsTable,
      CartItem,
      $$CartItemsTableFilterComposer,
      $$CartItemsTableOrderingComposer,
      $$CartItemsTableAnnotationComposer,
      $$CartItemsTableCreateCompanionBuilder,
      $$CartItemsTableUpdateCompanionBuilder,
      (CartItem, $$CartItemsTableReferences),
      CartItem,
      PrefetchHooks Function({bool productId})
    >;
typedef $$FavoritesTableCreateCompanionBuilder = FavoritesCompanion Function({
  required String productId,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$FavoritesTableUpdateCompanionBuilder = FavoritesCompanion Function({
  Value<String> productId,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$FavoritesTableReferences
    extends BaseReferences<_$AppDatabase, $FavoritesTable, Favorite> {
  $$FavoritesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProductsTable _productIdTable(_$AppDatabase db) =>
      db.products.createAlias('favorites__product_id__products__id');

  $$ProductsTableProcessedTableManager get productId {
    final $_column = $_itemColumn<String>('product_id')!;

    final manager = $$ProductsTableTableManager(
      $_db,
      $_db.products,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_productIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FavoritesTableFilterComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ProductsTableFilterComposer get productId {
    final $$ProductsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableFilterComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableOrderingComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProductsTableOrderingComposer get productId {
    final $$ProductsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableOrderingComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavoritesTable> {
  $$FavoritesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ProductsTableAnnotationComposer get productId {
    final $$ProductsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.productId,
      referencedTable: $db.products,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProductsTableAnnotationComposer(
            $db: $db,
            $table: $db.products,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FavoritesTable,
          Favorite,
          $$FavoritesTableFilterComposer,
          $$FavoritesTableOrderingComposer,
          $$FavoritesTableAnnotationComposer,
          $$FavoritesTableCreateCompanionBuilder,
          $$FavoritesTableUpdateCompanionBuilder,
          (Favorite, $$FavoritesTableReferences),
          Favorite,
          PrefetchHooks Function({bool productId})
        > {
  $$FavoritesTableTableManager(_$AppDatabase db, $FavoritesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoritesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoritesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoritesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> productId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FavoritesCompanion(
                productId: productId,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String productId,
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FavoritesCompanion.insert(
                productId: productId,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$FavoritesTable, Favorite>(table),
                  $$FavoritesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({productId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (productId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.productId,
                        referencedTable: $$FavoritesTableReferences
                            ._productIdTable(db),
                        referencedColumn: $$FavoritesTableReferences
                            ._productIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FavoritesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FavoritesTable,
      Favorite,
      $$FavoritesTableFilterComposer,
      $$FavoritesTableOrderingComposer,
      $$FavoritesTableAnnotationComposer,
      $$FavoritesTableCreateCompanionBuilder,
      $$FavoritesTableUpdateCompanionBuilder,
      (Favorite, $$FavoritesTableReferences),
      Favorite,
      PrefetchHooks Function({bool productId})
    >;
typedef $$AddressesTableCreateCompanionBuilder = AddressesCompanion Function({
  required String id,
  required String label,
  required String street,
  required String area,
  required String city,
  required String etaText,
  Value<bool> isDefault,
  Value<int> rowid,
});
typedef $$AddressesTableUpdateCompanionBuilder = AddressesCompanion Function({
  Value<String> id,
  Value<String> label,
  Value<String> street,
  Value<String> area,
  Value<String> city,
  Value<String> etaText,
  Value<bool> isDefault,
  Value<int> rowid,
});

class $$AddressesTableFilterComposer
    extends Composer<_$AppDatabase, $AddressesTable> {
  $$AddressesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get street => $composableBuilder(
    column: $table.street,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get area => $composableBuilder(
    column: $table.area,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get city => $composableBuilder(
    column: $table.city,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get etaText => $composableBuilder(
    column: $table.etaText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDefault => $composableBuilder(
    column: $table.isDefault,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AddressesTableOrderingComposer
    extends Composer<_$AppDatabase, $AddressesTable> {
  $$AddressesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get street => $composableBuilder(
    column: $table.street,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get area => $composableBuilder(
    column: $table.area,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get city => $composableBuilder(
    column: $table.city,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get etaText => $composableBuilder(
    column: $table.etaText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDefault => $composableBuilder(
    column: $table.isDefault,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AddressesTableAnnotationComposer
    extends Composer<_$AppDatabase, $AddressesTable> {
  $$AddressesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<String> get street =>
      $composableBuilder(column: $table.street, builder: (column) => column);

  GeneratedColumn<String> get area =>
      $composableBuilder(column: $table.area, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get etaText =>
      $composableBuilder(column: $table.etaText, builder: (column) => column);

  GeneratedColumn<bool> get isDefault =>
      $composableBuilder(column: $table.isDefault, builder: (column) => column);
}

class $$AddressesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AddressesTable,
          Address,
          $$AddressesTableFilterComposer,
          $$AddressesTableOrderingComposer,
          $$AddressesTableAnnotationComposer,
          $$AddressesTableCreateCompanionBuilder,
          $$AddressesTableUpdateCompanionBuilder,
          (Address, BaseReferences<_$AppDatabase, $AddressesTable, Address>),
          Address,
          PrefetchHooks Function()
        > {
  $$AddressesTableTableManager(_$AppDatabase db, $AddressesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AddressesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AddressesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AddressesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> label = const Value.absent(),
                Value<String> street = const Value.absent(),
                Value<String> area = const Value.absent(),
                Value<String> city = const Value.absent(),
                Value<String> etaText = const Value.absent(),
                Value<bool> isDefault = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AddressesCompanion(
                id: id,
                label: label,
                street: street,
                area: area,
                city: city,
                etaText: etaText,
                isDefault: isDefault,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String label,
                required String street,
                required String area,
                required String city,
                required String etaText,
                Value<bool> isDefault = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => AddressesCompanion.insert(
                id: id,
                label: label,
                street: street,
                area: area,
                city: city,
                etaText: etaText,
                isDefault: isDefault,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$AddressesTable, Address>(table),
                  BaseReferences<_$AppDatabase, $AddressesTable, Address>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AddressesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AddressesTable,
      Address,
      $$AddressesTableFilterComposer,
      $$AddressesTableOrderingComposer,
      $$AddressesTableAnnotationComposer,
      $$AddressesTableCreateCompanionBuilder,
      $$AddressesTableUpdateCompanionBuilder,
      (Address, BaseReferences<_$AppDatabase, $AddressesTable, Address>),
      Address,
      PrefetchHooks Function()
    >;
typedef $$OrdersTableCreateCompanionBuilder = OrdersCompanion Function({
  required String id,
  required String orderNumber,
  required String status,
  required String addressSummary,
  required String paymentMethod,
  required int subtotalPiasters,
  required int deliveryFeePiasters,
  required int packagingFeePiasters,
  required int discountPiasters,
  required int totalPiasters,
  Value<String?> promoCode,
  Value<DateTime> createdAt,
  Value<int> rowid,
});
typedef $$OrdersTableUpdateCompanionBuilder = OrdersCompanion Function({
  Value<String> id,
  Value<String> orderNumber,
  Value<String> status,
  Value<String> addressSummary,
  Value<String> paymentMethod,
  Value<int> subtotalPiasters,
  Value<int> deliveryFeePiasters,
  Value<int> packagingFeePiasters,
  Value<int> discountPiasters,
  Value<int> totalPiasters,
  Value<String?> promoCode,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$OrdersTableReferences
    extends BaseReferences<_$AppDatabase, $OrdersTable, Order> {
  $$OrdersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$OrderItemsTable, List<OrderItem>>
  _orderItemsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.orderItems,
    aliasName: 'orders__id__order_items__order_id',
  );

  $$OrderItemsTableProcessedTableManager get orderItemsRefs {
    final manager = $$OrderItemsTableTableManager(
      $_db,
      $_db.orderItems,
    ).filter((f) => f.orderId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_orderItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$OrdersTableFilterComposer
    extends Composer<_$AppDatabase, $OrdersTable> {
  $$OrdersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get orderNumber => $composableBuilder(
    column: $table.orderNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get addressSummary => $composableBuilder(
    column: $table.addressSummary,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get subtotalPiasters => $composableBuilder(
    column: $table.subtotalPiasters,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get deliveryFeePiasters => $composableBuilder(
    column: $table.deliveryFeePiasters,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get packagingFeePiasters => $composableBuilder(
    column: $table.packagingFeePiasters,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get discountPiasters => $composableBuilder(
    column: $table.discountPiasters,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get totalPiasters => $composableBuilder(
    column: $table.totalPiasters,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get promoCode => $composableBuilder(
    column: $table.promoCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> orderItemsRefs(
    Expression<bool> Function($$OrderItemsTableFilterComposer f) f,
  ) {
    final $$OrderItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.orderItems,
      getReferencedColumn: (t) => t.orderId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrderItemsTableFilterComposer(
            $db: $db,
            $table: $db.orderItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$OrdersTableOrderingComposer
    extends Composer<_$AppDatabase, $OrdersTable> {
  $$OrdersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get orderNumber => $composableBuilder(
    column: $table.orderNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get addressSummary => $composableBuilder(
    column: $table.addressSummary,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get subtotalPiasters => $composableBuilder(
    column: $table.subtotalPiasters,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get deliveryFeePiasters => $composableBuilder(
    column: $table.deliveryFeePiasters,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get packagingFeePiasters => $composableBuilder(
    column: $table.packagingFeePiasters,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get discountPiasters => $composableBuilder(
    column: $table.discountPiasters,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get totalPiasters => $composableBuilder(
    column: $table.totalPiasters,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get promoCode => $composableBuilder(
    column: $table.promoCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$OrdersTableAnnotationComposer
    extends Composer<_$AppDatabase, $OrdersTable> {
  $$OrdersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get orderNumber => $composableBuilder(
    column: $table.orderNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get addressSummary => $composableBuilder(
    column: $table.addressSummary,
    builder: (column) => column,
  );

  GeneratedColumn<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => column,
  );

  GeneratedColumn<int> get subtotalPiasters => $composableBuilder(
    column: $table.subtotalPiasters,
    builder: (column) => column,
  );

  GeneratedColumn<int> get deliveryFeePiasters => $composableBuilder(
    column: $table.deliveryFeePiasters,
    builder: (column) => column,
  );

  GeneratedColumn<int> get packagingFeePiasters => $composableBuilder(
    column: $table.packagingFeePiasters,
    builder: (column) => column,
  );

  GeneratedColumn<int> get discountPiasters => $composableBuilder(
    column: $table.discountPiasters,
    builder: (column) => column,
  );

  GeneratedColumn<int> get totalPiasters => $composableBuilder(
    column: $table.totalPiasters,
    builder: (column) => column,
  );

  GeneratedColumn<String> get promoCode =>
      $composableBuilder(column: $table.promoCode, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> orderItemsRefs<T extends Object>(
    Expression<T> Function($$OrderItemsTableAnnotationComposer a) f,
  ) {
    final $$OrderItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.orderItems,
      getReferencedColumn: (t) => t.orderId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrderItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.orderItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$OrdersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $OrdersTable,
          Order,
          $$OrdersTableFilterComposer,
          $$OrdersTableOrderingComposer,
          $$OrdersTableAnnotationComposer,
          $$OrdersTableCreateCompanionBuilder,
          $$OrdersTableUpdateCompanionBuilder,
          (Order, $$OrdersTableReferences),
          Order,
          PrefetchHooks Function({bool orderItemsRefs})
        > {
  $$OrdersTableTableManager(_$AppDatabase db, $OrdersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OrdersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OrdersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OrdersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> orderNumber = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String> addressSummary = const Value.absent(),
                Value<String> paymentMethod = const Value.absent(),
                Value<int> subtotalPiasters = const Value.absent(),
                Value<int> deliveryFeePiasters = const Value.absent(),
                Value<int> packagingFeePiasters = const Value.absent(),
                Value<int> discountPiasters = const Value.absent(),
                Value<int> totalPiasters = const Value.absent(),
                Value<String?> promoCode = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OrdersCompanion(
                id: id,
                orderNumber: orderNumber,
                status: status,
                addressSummary: addressSummary,
                paymentMethod: paymentMethod,
                subtotalPiasters: subtotalPiasters,
                deliveryFeePiasters: deliveryFeePiasters,
                packagingFeePiasters: packagingFeePiasters,
                discountPiasters: discountPiasters,
                totalPiasters: totalPiasters,
                promoCode: promoCode,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String orderNumber,
                required String status,
                required String addressSummary,
                required String paymentMethod,
                required int subtotalPiasters,
                required int deliveryFeePiasters,
                required int packagingFeePiasters,
                required int discountPiasters,
                required int totalPiasters,
                Value<String?> promoCode = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => OrdersCompanion.insert(
                id: id,
                orderNumber: orderNumber,
                status: status,
                addressSummary: addressSummary,
                paymentMethod: paymentMethod,
                subtotalPiasters: subtotalPiasters,
                deliveryFeePiasters: deliveryFeePiasters,
                packagingFeePiasters: packagingFeePiasters,
                discountPiasters: discountPiasters,
                totalPiasters: totalPiasters,
                promoCode: promoCode,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$OrdersTable, Order>(table),
                  $$OrdersTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({orderItemsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (orderItemsRefs) db.orderItems],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (orderItemsRefs)
                    await $_getPrefetchedDataByColumns<
                      Order,
                      $OrdersTable,
                      OrderItem,
                      $OrderItemsTable
                    >(
                      currentTable: table,
                      referencedTable: $$OrdersTableReferences
                          ._orderItemsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$OrdersTableReferences(db, table, p0).orderItemsRefs,
                      currentColumn: 'id',
                      referencedColumn: 'order_id',
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$OrdersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $OrdersTable,
      Order,
      $$OrdersTableFilterComposer,
      $$OrdersTableOrderingComposer,
      $$OrdersTableAnnotationComposer,
      $$OrdersTableCreateCompanionBuilder,
      $$OrdersTableUpdateCompanionBuilder,
      (Order, $$OrdersTableReferences),
      Order,
      PrefetchHooks Function({bool orderItemsRefs})
    >;
typedef $$OrderItemsTableCreateCompanionBuilder = OrderItemsCompanion Function({
  Value<int> id,
  required String orderId,
  required String productId,
  required String productName,
  required String unitLabel,
  required String imageAsset,
  required int unitPricePiasters,
  required int quantity,
});
typedef $$OrderItemsTableUpdateCompanionBuilder = OrderItemsCompanion Function({
  Value<int> id,
  Value<String> orderId,
  Value<String> productId,
  Value<String> productName,
  Value<String> unitLabel,
  Value<String> imageAsset,
  Value<int> unitPricePiasters,
  Value<int> quantity,
});

final class $$OrderItemsTableReferences
    extends BaseReferences<_$AppDatabase, $OrderItemsTable, OrderItem> {
  $$OrderItemsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $OrdersTable _orderIdTable(_$AppDatabase db) =>
      db.orders.createAlias('order_items__order_id__orders__id');

  $$OrdersTableProcessedTableManager get orderId {
    final $_column = $_itemColumn<String>('order_id')!;

    final manager = $$OrdersTableTableManager(
      $_db,
      $_db.orders,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_orderIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$OrderItemsTableFilterComposer
    extends Composer<_$AppDatabase, $OrderItemsTable> {
  $$OrderItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get productName => $composableBuilder(
    column: $table.productName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unitLabel => $composableBuilder(
    column: $table.unitLabel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageAsset => $composableBuilder(
    column: $table.imageAsset,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get unitPricePiasters => $composableBuilder(
    column: $table.unitPricePiasters,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  $$OrdersTableFilterComposer get orderId {
    final $$OrdersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.orderId,
      referencedTable: $db.orders,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrdersTableFilterComposer(
            $db: $db,
            $table: $db.orders,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OrderItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $OrderItemsTable> {
  $$OrderItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productId => $composableBuilder(
    column: $table.productId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get productName => $composableBuilder(
    column: $table.productName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unitLabel => $composableBuilder(
    column: $table.unitLabel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageAsset => $composableBuilder(
    column: $table.imageAsset,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get unitPricePiasters => $composableBuilder(
    column: $table.unitPricePiasters,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  $$OrdersTableOrderingComposer get orderId {
    final $$OrdersTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.orderId,
      referencedTable: $db.orders,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrdersTableOrderingComposer(
            $db: $db,
            $table: $db.orders,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OrderItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $OrderItemsTable> {
  $$OrderItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<String> get productName => $composableBuilder(
    column: $table.productName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get unitLabel =>
      $composableBuilder(column: $table.unitLabel, builder: (column) => column);

  GeneratedColumn<String> get imageAsset => $composableBuilder(
    column: $table.imageAsset,
    builder: (column) => column,
  );

  GeneratedColumn<int> get unitPricePiasters => $composableBuilder(
    column: $table.unitPricePiasters,
    builder: (column) => column,
  );

  GeneratedColumn<int> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  $$OrdersTableAnnotationComposer get orderId {
    final $$OrdersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.orderId,
      referencedTable: $db.orders,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OrdersTableAnnotationComposer(
            $db: $db,
            $table: $db.orders,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OrderItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $OrderItemsTable,
          OrderItem,
          $$OrderItemsTableFilterComposer,
          $$OrderItemsTableOrderingComposer,
          $$OrderItemsTableAnnotationComposer,
          $$OrderItemsTableCreateCompanionBuilder,
          $$OrderItemsTableUpdateCompanionBuilder,
          (OrderItem, $$OrderItemsTableReferences),
          OrderItem,
          PrefetchHooks Function({bool orderId})
        > {
  $$OrderItemsTableTableManager(_$AppDatabase db, $OrderItemsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OrderItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OrderItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OrderItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> orderId = const Value.absent(),
                Value<String> productId = const Value.absent(),
                Value<String> productName = const Value.absent(),
                Value<String> unitLabel = const Value.absent(),
                Value<String> imageAsset = const Value.absent(),
                Value<int> unitPricePiasters = const Value.absent(),
                Value<int> quantity = const Value.absent(),
              }) => OrderItemsCompanion(
                id: id,
                orderId: orderId,
                productId: productId,
                productName: productName,
                unitLabel: unitLabel,
                imageAsset: imageAsset,
                unitPricePiasters: unitPricePiasters,
                quantity: quantity,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String orderId,
                required String productId,
                required String productName,
                required String unitLabel,
                required String imageAsset,
                required int unitPricePiasters,
                required int quantity,
              }) => OrderItemsCompanion.insert(
                id: id,
                orderId: orderId,
                productId: productId,
                productName: productName,
                unitLabel: unitLabel,
                imageAsset: imageAsset,
                unitPricePiasters: unitPricePiasters,
                quantity: quantity,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$OrderItemsTable, OrderItem>(table),
                  $$OrderItemsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({orderId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (orderId) {
                      state = state.withJoin(
                        currentTable: table,
                        currentColumn: table.orderId,
                        referencedTable: $$OrderItemsTableReferences
                            ._orderIdTable(db),
                        referencedColumn: $$OrderItemsTableReferences
                            ._orderIdTable(db)
                            .id,
                      ) as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$OrderItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $OrderItemsTable,
      OrderItem,
      $$OrderItemsTableFilterComposer,
      $$OrderItemsTableOrderingComposer,
      $$OrderItemsTableAnnotationComposer,
      $$OrderItemsTableCreateCompanionBuilder,
      $$OrderItemsTableUpdateCompanionBuilder,
      (OrderItem, $$OrderItemsTableReferences),
      OrderItem,
      PrefetchHooks Function({bool orderId})
    >;
typedef $$WalletAccountsTableCreateCompanionBuilder =
    WalletAccountsCompanion Function({
      required String id,
      Value<int> balancePiasters,
      Value<bool> isPrivilegeActive,
      required String cardLast4,
      required String cardHolder,
      required String cardExpiry,
      Value<int> cashbackPercent,
      Value<int> rowid,
    });
typedef $$WalletAccountsTableUpdateCompanionBuilder =
    WalletAccountsCompanion Function({
      Value<String> id,
      Value<int> balancePiasters,
      Value<bool> isPrivilegeActive,
      Value<String> cardLast4,
      Value<String> cardHolder,
      Value<String> cardExpiry,
      Value<int> cashbackPercent,
      Value<int> rowid,
    });

class $$WalletAccountsTableFilterComposer
    extends Composer<_$AppDatabase, $WalletAccountsTable> {
  $$WalletAccountsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get balancePiasters => $composableBuilder(
    column: $table.balancePiasters,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isPrivilegeActive => $composableBuilder(
    column: $table.isPrivilegeActive,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cardLast4 => $composableBuilder(
    column: $table.cardLast4,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cardHolder => $composableBuilder(
    column: $table.cardHolder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get cardExpiry => $composableBuilder(
    column: $table.cardExpiry,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get cashbackPercent => $composableBuilder(
    column: $table.cashbackPercent,
    builder: (column) => ColumnFilters(column),
  );
}

class $$WalletAccountsTableOrderingComposer
    extends Composer<_$AppDatabase, $WalletAccountsTable> {
  $$WalletAccountsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get balancePiasters => $composableBuilder(
    column: $table.balancePiasters,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isPrivilegeActive => $composableBuilder(
    column: $table.isPrivilegeActive,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cardLast4 => $composableBuilder(
    column: $table.cardLast4,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cardHolder => $composableBuilder(
    column: $table.cardHolder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get cardExpiry => $composableBuilder(
    column: $table.cardExpiry,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get cashbackPercent => $composableBuilder(
    column: $table.cashbackPercent,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WalletAccountsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WalletAccountsTable> {
  $$WalletAccountsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get balancePiasters => $composableBuilder(
    column: $table.balancePiasters,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isPrivilegeActive => $composableBuilder(
    column: $table.isPrivilegeActive,
    builder: (column) => column,
  );

  GeneratedColumn<String> get cardLast4 =>
      $composableBuilder(column: $table.cardLast4, builder: (column) => column);

  GeneratedColumn<String> get cardHolder => $composableBuilder(
    column: $table.cardHolder,
    builder: (column) => column,
  );

  GeneratedColumn<String> get cardExpiry => $composableBuilder(
    column: $table.cardExpiry,
    builder: (column) => column,
  );

  GeneratedColumn<int> get cashbackPercent => $composableBuilder(
    column: $table.cashbackPercent,
    builder: (column) => column,
  );
}

class $$WalletAccountsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WalletAccountsTable,
          WalletAccount,
          $$WalletAccountsTableFilterComposer,
          $$WalletAccountsTableOrderingComposer,
          $$WalletAccountsTableAnnotationComposer,
          $$WalletAccountsTableCreateCompanionBuilder,
          $$WalletAccountsTableUpdateCompanionBuilder,
          (
            WalletAccount,
            BaseReferences<_$AppDatabase, $WalletAccountsTable, WalletAccount>,
          ),
          WalletAccount,
          PrefetchHooks Function()
        > {
  $$WalletAccountsTableTableManager(
    _$AppDatabase db,
    $WalletAccountsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WalletAccountsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WalletAccountsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WalletAccountsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<int> balancePiasters = const Value.absent(),
                Value<bool> isPrivilegeActive = const Value.absent(),
                Value<String> cardLast4 = const Value.absent(),
                Value<String> cardHolder = const Value.absent(),
                Value<String> cardExpiry = const Value.absent(),
                Value<int> cashbackPercent = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WalletAccountsCompanion(
                id: id,
                balancePiasters: balancePiasters,
                isPrivilegeActive: isPrivilegeActive,
                cardLast4: cardLast4,
                cardHolder: cardHolder,
                cardExpiry: cardExpiry,
                cashbackPercent: cashbackPercent,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<int> balancePiasters = const Value.absent(),
                Value<bool> isPrivilegeActive = const Value.absent(),
                required String cardLast4,
                required String cardHolder,
                required String cardExpiry,
                Value<int> cashbackPercent = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WalletAccountsCompanion.insert(
                id: id,
                balancePiasters: balancePiasters,
                isPrivilegeActive: isPrivilegeActive,
                cardLast4: cardLast4,
                cardHolder: cardHolder,
                cardExpiry: cardExpiry,
                cashbackPercent: cashbackPercent,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$WalletAccountsTable, WalletAccount>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $WalletAccountsTable,
                    WalletAccount
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$WalletAccountsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WalletAccountsTable,
      WalletAccount,
      $$WalletAccountsTableFilterComposer,
      $$WalletAccountsTableOrderingComposer,
      $$WalletAccountsTableAnnotationComposer,
      $$WalletAccountsTableCreateCompanionBuilder,
      $$WalletAccountsTableUpdateCompanionBuilder,
      (
        WalletAccount,
        BaseReferences<_$AppDatabase, $WalletAccountsTable, WalletAccount>,
      ),
      WalletAccount,
      PrefetchHooks Function()
    >;
typedef $$WalletTransactionsTableCreateCompanionBuilder =
    WalletTransactionsCompanion Function({
      required String id,
      required String title,
      required String subtitle,
      required int amountPiasters,
      required String type,
      required String statusLabel,
      Value<String?> referenceCode,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$WalletTransactionsTableUpdateCompanionBuilder =
    WalletTransactionsCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> subtitle,
      Value<int> amountPiasters,
      Value<String> type,
      Value<String> statusLabel,
      Value<String?> referenceCode,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

class $$WalletTransactionsTableFilterComposer
    extends Composer<_$AppDatabase, $WalletTransactionsTable> {
  $$WalletTransactionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get amountPiasters => $composableBuilder(
    column: $table.amountPiasters,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get statusLabel => $composableBuilder(
    column: $table.statusLabel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get referenceCode => $composableBuilder(
    column: $table.referenceCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$WalletTransactionsTableOrderingComposer
    extends Composer<_$AppDatabase, $WalletTransactionsTable> {
  $$WalletTransactionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get amountPiasters => $composableBuilder(
    column: $table.amountPiasters,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get statusLabel => $composableBuilder(
    column: $table.statusLabel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get referenceCode => $composableBuilder(
    column: $table.referenceCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WalletTransactionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $WalletTransactionsTable> {
  $$WalletTransactionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get subtitle =>
      $composableBuilder(column: $table.subtitle, builder: (column) => column);

  GeneratedColumn<int> get amountPiasters => $composableBuilder(
    column: $table.amountPiasters,
    builder: (column) => column,
  );

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get statusLabel => $composableBuilder(
    column: $table.statusLabel,
    builder: (column) => column,
  );

  GeneratedColumn<String> get referenceCode => $composableBuilder(
    column: $table.referenceCode,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$WalletTransactionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $WalletTransactionsTable,
          WalletTransaction,
          $$WalletTransactionsTableFilterComposer,
          $$WalletTransactionsTableOrderingComposer,
          $$WalletTransactionsTableAnnotationComposer,
          $$WalletTransactionsTableCreateCompanionBuilder,
          $$WalletTransactionsTableUpdateCompanionBuilder,
          (
            WalletTransaction,
            BaseReferences<
              _$AppDatabase,
              $WalletTransactionsTable,
              WalletTransaction
            >,
          ),
          WalletTransaction,
          PrefetchHooks Function()
        > {
  $$WalletTransactionsTableTableManager(
    _$AppDatabase db,
    $WalletTransactionsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WalletTransactionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WalletTransactionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WalletTransactionsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> subtitle = const Value.absent(),
                Value<int> amountPiasters = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> statusLabel = const Value.absent(),
                Value<String?> referenceCode = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WalletTransactionsCompanion(
                id: id,
                title: title,
                subtitle: subtitle,
                amountPiasters: amountPiasters,
                type: type,
                statusLabel: statusLabel,
                referenceCode: referenceCode,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String subtitle,
                required int amountPiasters,
                required String type,
                required String statusLabel,
                Value<String?> referenceCode = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => WalletTransactionsCompanion.insert(
                id: id,
                title: title,
                subtitle: subtitle,
                amountPiasters: amountPiasters,
                type: type,
                statusLabel: statusLabel,
                referenceCode: referenceCode,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$WalletTransactionsTable, WalletTransaction>(
                    table,
                  ),
                  BaseReferences<
                    _$AppDatabase,
                    $WalletTransactionsTable,
                    WalletTransaction
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$WalletTransactionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $WalletTransactionsTable,
      WalletTransaction,
      $$WalletTransactionsTableFilterComposer,
      $$WalletTransactionsTableOrderingComposer,
      $$WalletTransactionsTableAnnotationComposer,
      $$WalletTransactionsTableCreateCompanionBuilder,
      $$WalletTransactionsTableUpdateCompanionBuilder,
      (
        WalletTransaction,
        BaseReferences<
          _$AppDatabase,
          $WalletTransactionsTable,
          WalletTransaction
        >,
      ),
      WalletTransaction,
      PrefetchHooks Function()
    >;
typedef $$SavedCardsTableCreateCompanionBuilder = SavedCardsCompanion Function({
  required String id,
  required String brand,
  required String last4,
  required String expiry,
  required String holderName,
  Value<bool> isDefault,
  Value<int> rowid,
});
typedef $$SavedCardsTableUpdateCompanionBuilder = SavedCardsCompanion Function({
  Value<String> id,
  Value<String> brand,
  Value<String> last4,
  Value<String> expiry,
  Value<String> holderName,
  Value<bool> isDefault,
  Value<int> rowid,
});

class $$SavedCardsTableFilterComposer
    extends Composer<_$AppDatabase, $SavedCardsTable> {
  $$SavedCardsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get last4 => $composableBuilder(
    column: $table.last4,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get expiry => $composableBuilder(
    column: $table.expiry,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get holderName => $composableBuilder(
    column: $table.holderName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDefault => $composableBuilder(
    column: $table.isDefault,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SavedCardsTableOrderingComposer
    extends Composer<_$AppDatabase, $SavedCardsTable> {
  $$SavedCardsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get brand => $composableBuilder(
    column: $table.brand,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get last4 => $composableBuilder(
    column: $table.last4,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get expiry => $composableBuilder(
    column: $table.expiry,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get holderName => $composableBuilder(
    column: $table.holderName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDefault => $composableBuilder(
    column: $table.isDefault,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SavedCardsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SavedCardsTable> {
  $$SavedCardsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get brand =>
      $composableBuilder(column: $table.brand, builder: (column) => column);

  GeneratedColumn<String> get last4 =>
      $composableBuilder(column: $table.last4, builder: (column) => column);

  GeneratedColumn<String> get expiry =>
      $composableBuilder(column: $table.expiry, builder: (column) => column);

  GeneratedColumn<String> get holderName => $composableBuilder(
    column: $table.holderName,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isDefault =>
      $composableBuilder(column: $table.isDefault, builder: (column) => column);
}

class $$SavedCardsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SavedCardsTable,
          SavedCard,
          $$SavedCardsTableFilterComposer,
          $$SavedCardsTableOrderingComposer,
          $$SavedCardsTableAnnotationComposer,
          $$SavedCardsTableCreateCompanionBuilder,
          $$SavedCardsTableUpdateCompanionBuilder,
          (
            SavedCard,
            BaseReferences<_$AppDatabase, $SavedCardsTable, SavedCard>,
          ),
          SavedCard,
          PrefetchHooks Function()
        > {
  $$SavedCardsTableTableManager(_$AppDatabase db, $SavedCardsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SavedCardsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SavedCardsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SavedCardsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> brand = const Value.absent(),
                Value<String> last4 = const Value.absent(),
                Value<String> expiry = const Value.absent(),
                Value<String> holderName = const Value.absent(),
                Value<bool> isDefault = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SavedCardsCompanion(
                id: id,
                brand: brand,
                last4: last4,
                expiry: expiry,
                holderName: holderName,
                isDefault: isDefault,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String brand,
                required String last4,
                required String expiry,
                required String holderName,
                Value<bool> isDefault = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SavedCardsCompanion.insert(
                id: id,
                brand: brand,
                last4: last4,
                expiry: expiry,
                holderName: holderName,
                isDefault: isDefault,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$SavedCardsTable, SavedCard>(table),
                  BaseReferences<_$AppDatabase, $SavedCardsTable, SavedCard>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SavedCardsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SavedCardsTable,
      SavedCard,
      $$SavedCardsTableFilterComposer,
      $$SavedCardsTableOrderingComposer,
      $$SavedCardsTableAnnotationComposer,
      $$SavedCardsTableCreateCompanionBuilder,
      $$SavedCardsTableUpdateCompanionBuilder,
      (SavedCard, BaseReferences<_$AppDatabase, $SavedCardsTable, SavedCard>),
      SavedCard,
      PrefetchHooks Function()
    >;
typedef $$PromoCodesTableCreateCompanionBuilder = PromoCodesCompanion Function({
  required String code,
  required String title,
  required String description,
  required String discountType,
  required int discountValue,
  Value<int> minOrderPiasters,
  Value<bool> isActive,
  Value<int> rowid,
});
typedef $$PromoCodesTableUpdateCompanionBuilder = PromoCodesCompanion Function({
  Value<String> code,
  Value<String> title,
  Value<String> description,
  Value<String> discountType,
  Value<int> discountValue,
  Value<int> minOrderPiasters,
  Value<bool> isActive,
  Value<int> rowid,
});

class $$PromoCodesTableFilterComposer
    extends Composer<_$AppDatabase, $PromoCodesTable> {
  $$PromoCodesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get code => $composableBuilder(
    column: $table.code,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get discountType => $composableBuilder(
    column: $table.discountType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get discountValue => $composableBuilder(
    column: $table.discountValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get minOrderPiasters => $composableBuilder(
    column: $table.minOrderPiasters,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PromoCodesTableOrderingComposer
    extends Composer<_$AppDatabase, $PromoCodesTable> {
  $$PromoCodesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get code => $composableBuilder(
    column: $table.code,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get discountType => $composableBuilder(
    column: $table.discountType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get discountValue => $composableBuilder(
    column: $table.discountValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get minOrderPiasters => $composableBuilder(
    column: $table.minOrderPiasters,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PromoCodesTableAnnotationComposer
    extends Composer<_$AppDatabase, $PromoCodesTable> {
  $$PromoCodesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get discountType => $composableBuilder(
    column: $table.discountType,
    builder: (column) => column,
  );

  GeneratedColumn<int> get discountValue => $composableBuilder(
    column: $table.discountValue,
    builder: (column) => column,
  );

  GeneratedColumn<int> get minOrderPiasters => $composableBuilder(
    column: $table.minOrderPiasters,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$PromoCodesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PromoCodesTable,
          PromoCode,
          $$PromoCodesTableFilterComposer,
          $$PromoCodesTableOrderingComposer,
          $$PromoCodesTableAnnotationComposer,
          $$PromoCodesTableCreateCompanionBuilder,
          $$PromoCodesTableUpdateCompanionBuilder,
          (
            PromoCode,
            BaseReferences<_$AppDatabase, $PromoCodesTable, PromoCode>,
          ),
          PromoCode,
          PrefetchHooks Function()
        > {
  $$PromoCodesTableTableManager(_$AppDatabase db, $PromoCodesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PromoCodesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PromoCodesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PromoCodesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> code = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> discountType = const Value.absent(),
                Value<int> discountValue = const Value.absent(),
                Value<int> minOrderPiasters = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PromoCodesCompanion(
                code: code,
                title: title,
                description: description,
                discountType: discountType,
                discountValue: discountValue,
                minOrderPiasters: minOrderPiasters,
                isActive: isActive,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String code,
                required String title,
                required String description,
                required String discountType,
                required int discountValue,
                Value<int> minOrderPiasters = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => PromoCodesCompanion.insert(
                code: code,
                title: title,
                description: description,
                discountType: discountType,
                discountValue: discountValue,
                minOrderPiasters: minOrderPiasters,
                isActive: isActive,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PromoCodesTable, PromoCode>(table),
                  BaseReferences<_$AppDatabase, $PromoCodesTable, PromoCode>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PromoCodesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PromoCodesTable,
      PromoCode,
      $$PromoCodesTableFilterComposer,
      $$PromoCodesTableOrderingComposer,
      $$PromoCodesTableAnnotationComposer,
      $$PromoCodesTableCreateCompanionBuilder,
      $$PromoCodesTableUpdateCompanionBuilder,
      (PromoCode, BaseReferences<_$AppDatabase, $PromoCodesTable, PromoCode>),
      PromoCode,
      PrefetchHooks Function()
    >;
typedef $$UserProfilesTableCreateCompanionBuilder =
    UserProfilesCompanion Function({
      required String id,
      required String fullName,
      required String phone,
      required String tierLabel,
      required String avatarAsset,
      Value<bool> hasMorningPass,
      Value<int> rewardsCount,
      required String referralCode,
      Value<int> rowid,
    });
typedef $$UserProfilesTableUpdateCompanionBuilder =
    UserProfilesCompanion Function({
      Value<String> id,
      Value<String> fullName,
      Value<String> phone,
      Value<String> tierLabel,
      Value<String> avatarAsset,
      Value<bool> hasMorningPass,
      Value<int> rewardsCount,
      Value<String> referralCode,
      Value<int> rowid,
    });

class $$UserProfilesTableFilterComposer
    extends Composer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fullName => $composableBuilder(
    column: $table.fullName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tierLabel => $composableBuilder(
    column: $table.tierLabel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get avatarAsset => $composableBuilder(
    column: $table.avatarAsset,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasMorningPass => $composableBuilder(
    column: $table.hasMorningPass,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get rewardsCount => $composableBuilder(
    column: $table.rewardsCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get referralCode => $composableBuilder(
    column: $table.referralCode,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UserProfilesTableOrderingComposer
    extends Composer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fullName => $composableBuilder(
    column: $table.fullName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tierLabel => $composableBuilder(
    column: $table.tierLabel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get avatarAsset => $composableBuilder(
    column: $table.avatarAsset,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasMorningPass => $composableBuilder(
    column: $table.hasMorningPass,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get rewardsCount => $composableBuilder(
    column: $table.rewardsCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get referralCode => $composableBuilder(
    column: $table.referralCode,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UserProfilesTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fullName =>
      $composableBuilder(column: $table.fullName, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get tierLabel =>
      $composableBuilder(column: $table.tierLabel, builder: (column) => column);

  GeneratedColumn<String> get avatarAsset => $composableBuilder(
    column: $table.avatarAsset,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get hasMorningPass => $composableBuilder(
    column: $table.hasMorningPass,
    builder: (column) => column,
  );

  GeneratedColumn<int> get rewardsCount => $composableBuilder(
    column: $table.rewardsCount,
    builder: (column) => column,
  );

  GeneratedColumn<String> get referralCode => $composableBuilder(
    column: $table.referralCode,
    builder: (column) => column,
  );
}

class $$UserProfilesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $UserProfilesTable,
          UserProfile,
          $$UserProfilesTableFilterComposer,
          $$UserProfilesTableOrderingComposer,
          $$UserProfilesTableAnnotationComposer,
          $$UserProfilesTableCreateCompanionBuilder,
          $$UserProfilesTableUpdateCompanionBuilder,
          (
            UserProfile,
            BaseReferences<_$AppDatabase, $UserProfilesTable, UserProfile>,
          ),
          UserProfile,
          PrefetchHooks Function()
        > {
  $$UserProfilesTableTableManager(_$AppDatabase db, $UserProfilesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserProfilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserProfilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserProfilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> fullName = const Value.absent(),
                Value<String> phone = const Value.absent(),
                Value<String> tierLabel = const Value.absent(),
                Value<String> avatarAsset = const Value.absent(),
                Value<bool> hasMorningPass = const Value.absent(),
                Value<int> rewardsCount = const Value.absent(),
                Value<String> referralCode = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UserProfilesCompanion(
                id: id,
                fullName: fullName,
                phone: phone,
                tierLabel: tierLabel,
                avatarAsset: avatarAsset,
                hasMorningPass: hasMorningPass,
                rewardsCount: rewardsCount,
                referralCode: referralCode,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String fullName,
                required String phone,
                required String tierLabel,
                required String avatarAsset,
                Value<bool> hasMorningPass = const Value.absent(),
                Value<int> rewardsCount = const Value.absent(),
                required String referralCode,
                Value<int> rowid = const Value.absent(),
              }) => UserProfilesCompanion.insert(
                id: id,
                fullName: fullName,
                phone: phone,
                tierLabel: tierLabel,
                avatarAsset: avatarAsset,
                hasMorningPass: hasMorningPass,
                rewardsCount: rewardsCount,
                referralCode: referralCode,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$UserProfilesTable, UserProfile>(table),
                  BaseReferences<
                    _$AppDatabase,
                    $UserProfilesTable,
                    UserProfile
                  >(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UserProfilesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $UserProfilesTable,
      UserProfile,
      $$UserProfilesTableFilterComposer,
      $$UserProfilesTableOrderingComposer,
      $$UserProfilesTableAnnotationComposer,
      $$UserProfilesTableCreateCompanionBuilder,
      $$UserProfilesTableUpdateCompanionBuilder,
      (
        UserProfile,
        BaseReferences<_$AppDatabase, $UserProfilesTable, UserProfile>,
      ),
      UserProfile,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
  $$BrandsTableTableManager get brands =>
      $$BrandsTableTableManager(_db, _db.brands);
  $$ProductsTableTableManager get products =>
      $$ProductsTableTableManager(_db, _db.products);
  $$BannersTableTableManager get banners =>
      $$BannersTableTableManager(_db, _db.banners);
  $$CartItemsTableTableManager get cartItems =>
      $$CartItemsTableTableManager(_db, _db.cartItems);
  $$FavoritesTableTableManager get favorites =>
      $$FavoritesTableTableManager(_db, _db.favorites);
  $$AddressesTableTableManager get addresses =>
      $$AddressesTableTableManager(_db, _db.addresses);
  $$OrdersTableTableManager get orders =>
      $$OrdersTableTableManager(_db, _db.orders);
  $$OrderItemsTableTableManager get orderItems =>
      $$OrderItemsTableTableManager(_db, _db.orderItems);
  $$WalletAccountsTableTableManager get walletAccounts =>
      $$WalletAccountsTableTableManager(_db, _db.walletAccounts);
  $$WalletTransactionsTableTableManager get walletTransactions =>
      $$WalletTransactionsTableTableManager(_db, _db.walletTransactions);
  $$SavedCardsTableTableManager get savedCards =>
      $$SavedCardsTableTableManager(_db, _db.savedCards);
  $$PromoCodesTableTableManager get promoCodes =>
      $$PromoCodesTableTableManager(_db, _db.promoCodes);
  $$UserProfilesTableTableManager get userProfiles =>
      $$UserProfilesTableTableManager(_db, _db.userProfiles);
}
