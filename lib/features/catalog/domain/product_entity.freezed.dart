// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductEntity {

 String get id; String get name; String get subtitle; String get description; String get categoryId; String get brandId; String get farmLabel; String get unitLabel; int get pricePiasters; int? get originalPricePiasters; String? get badgeText; String get badgeTone; String get imageAsset; double get rating; int get reviewCount; int get stockCount; bool get isSpotlight; bool get isSpecialOffer; bool get isNewArrival; bool get isPopular; bool get isPairingSuggestion;
/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<ProductEntity> get copyWith => _$ProductEntityCopyWithImpl<ProductEntity>(this as ProductEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.subtitle, _this.subtitle) || other.subtitle == _this.subtitle)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId)&&(identical(other.brandId, _this.brandId) || other.brandId == _this.brandId)&&(identical(other.farmLabel, _this.farmLabel) || other.farmLabel == _this.farmLabel)&&(identical(other.unitLabel, _this.unitLabel) || other.unitLabel == _this.unitLabel)&&(identical(other.pricePiasters, _this.pricePiasters) || other.pricePiasters == _this.pricePiasters)&&(identical(other.originalPricePiasters, _this.originalPricePiasters) || other.originalPricePiasters == _this.originalPricePiasters)&&(identical(other.badgeText, _this.badgeText) || other.badgeText == _this.badgeText)&&(identical(other.badgeTone, _this.badgeTone) || other.badgeTone == _this.badgeTone)&&(identical(other.imageAsset, _this.imageAsset) || other.imageAsset == _this.imageAsset)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.reviewCount, _this.reviewCount) || other.reviewCount == _this.reviewCount)&&(identical(other.stockCount, _this.stockCount) || other.stockCount == _this.stockCount)&&(identical(other.isSpotlight, _this.isSpotlight) || other.isSpotlight == _this.isSpotlight)&&(identical(other.isSpecialOffer, _this.isSpecialOffer) || other.isSpecialOffer == _this.isSpecialOffer)&&(identical(other.isNewArrival, _this.isNewArrival) || other.isNewArrival == _this.isNewArrival)&&(identical(other.isPopular, _this.isPopular) || other.isPopular == _this.isPopular)&&(identical(other.isPairingSuggestion, _this.isPairingSuggestion) || other.isPairingSuggestion == _this.isPairingSuggestion));
}


@override
int get hashCode {
  final _this = this as ProductEntity;
  return Object.hashAll([runtimeType,_this.id,_this.name,_this.subtitle,_this.description,_this.categoryId,_this.brandId,_this.farmLabel,_this.unitLabel,_this.pricePiasters,_this.originalPricePiasters,_this.badgeText,_this.badgeTone,_this.imageAsset,_this.rating,_this.reviewCount,_this.stockCount,_this.isSpotlight,_this.isSpecialOffer,_this.isNewArrival,_this.isPopular,_this.isPairingSuggestion]);
}

@override
String toString() {
  final _this = this as ProductEntity;
  return 'ProductEntity(id: ${_this.id}, name: ${_this.name}, subtitle: ${_this.subtitle}, description: ${_this.description}, categoryId: ${_this.categoryId}, brandId: ${_this.brandId}, farmLabel: ${_this.farmLabel}, unitLabel: ${_this.unitLabel}, pricePiasters: ${_this.pricePiasters}, originalPricePiasters: ${_this.originalPricePiasters}, badgeText: ${_this.badgeText}, badgeTone: ${_this.badgeTone}, imageAsset: ${_this.imageAsset}, rating: ${_this.rating}, reviewCount: ${_this.reviewCount}, stockCount: ${_this.stockCount}, isSpotlight: ${_this.isSpotlight}, isSpecialOffer: ${_this.isSpecialOffer}, isNewArrival: ${_this.isNewArrival}, isPopular: ${_this.isPopular}, isPairingSuggestion: ${_this.isPairingSuggestion})';
}


}

/// @nodoc
abstract mixin class $ProductEntityCopyWith<$Res>  {
  factory $ProductEntityCopyWith(ProductEntity value, $Res Function(ProductEntity) _then) = _$ProductEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String subtitle, String description, String categoryId, String brandId, String farmLabel, String unitLabel, int pricePiasters, int? originalPricePiasters, String? badgeText, String badgeTone, String imageAsset, double rating, int reviewCount, int stockCount, bool isSpotlight, bool isSpecialOffer, bool isNewArrival, bool isPopular, bool isPairingSuggestion
});




}
/// @nodoc
class _$ProductEntityCopyWithImpl<$Res>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._self, this._then);

  final ProductEntity _self;
  final $Res Function(ProductEntity) _then;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? subtitle = null,Object? description = null,Object? categoryId = null,Object? brandId = null,Object? farmLabel = null,Object? unitLabel = null,Object? pricePiasters = null,Object? originalPricePiasters = freezed,Object? badgeText = freezed,Object? badgeTone = null,Object? imageAsset = null,Object? rating = null,Object? reviewCount = null,Object? stockCount = null,Object? isSpotlight = null,Object? isSpecialOffer = null,Object? isNewArrival = null,Object? isPopular = null,Object? isPairingSuggestion = null,}) {
  return _then(ProductEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String,farmLabel: null == farmLabel ? _self.farmLabel : farmLabel // ignore: cast_nullable_to_non_nullable
as String,unitLabel: null == unitLabel ? _self.unitLabel : unitLabel // ignore: cast_nullable_to_non_nullable
as String,pricePiasters: null == pricePiasters ? _self.pricePiasters : pricePiasters // ignore: cast_nullable_to_non_nullable
as int,originalPricePiasters: freezed == originalPricePiasters ? _self.originalPricePiasters : originalPricePiasters // ignore: cast_nullable_to_non_nullable
as int?,badgeText: freezed == badgeText ? _self.badgeText : badgeText // ignore: cast_nullable_to_non_nullable
as String?,badgeTone: null == badgeTone ? _self.badgeTone : badgeTone // ignore: cast_nullable_to_non_nullable
as String,imageAsset: null == imageAsset ? _self.imageAsset : imageAsset // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,stockCount: null == stockCount ? _self.stockCount : stockCount // ignore: cast_nullable_to_non_nullable
as int,isSpotlight: null == isSpotlight ? _self.isSpotlight : isSpotlight // ignore: cast_nullable_to_non_nullable
as bool,isSpecialOffer: null == isSpecialOffer ? _self.isSpecialOffer : isSpecialOffer // ignore: cast_nullable_to_non_nullable
as bool,isNewArrival: null == isNewArrival ? _self.isNewArrival : isNewArrival // ignore: cast_nullable_to_non_nullable
as bool,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,isPairingSuggestion: null == isPairingSuggestion ? _self.isPairingSuggestion : isPairingSuggestion // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductEntity].
extension ProductEntityPatterns on ProductEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String subtitle,  String description,  String categoryId,  String brandId,  String farmLabel,  String unitLabel,  int pricePiasters,  int? originalPricePiasters,  String? badgeText,  String badgeTone,  String imageAsset,  double rating,  int reviewCount,  int stockCount,  bool isSpotlight,  bool isSpecialOffer,  bool isNewArrival,  bool isPopular,  bool isPairingSuggestion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
return $default(_that.id,_that.name,_that.subtitle,_that.description,_that.categoryId,_that.brandId,_that.farmLabel,_that.unitLabel,_that.pricePiasters,_that.originalPricePiasters,_that.badgeText,_that.badgeTone,_that.imageAsset,_that.rating,_that.reviewCount,_that.stockCount,_that.isSpotlight,_that.isSpecialOffer,_that.isNewArrival,_that.isPopular,_that.isPairingSuggestion);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String subtitle,  String description,  String categoryId,  String brandId,  String farmLabel,  String unitLabel,  int pricePiasters,  int? originalPricePiasters,  String? badgeText,  String badgeTone,  String imageAsset,  double rating,  int reviewCount,  int stockCount,  bool isSpotlight,  bool isSpecialOffer,  bool isNewArrival,  bool isPopular,  bool isPairingSuggestion)  $default,) {final _that = this;
switch (_that) {
case _ProductEntity():
return $default(_that.id,_that.name,_that.subtitle,_that.description,_that.categoryId,_that.brandId,_that.farmLabel,_that.unitLabel,_that.pricePiasters,_that.originalPricePiasters,_that.badgeText,_that.badgeTone,_that.imageAsset,_that.rating,_that.reviewCount,_that.stockCount,_that.isSpotlight,_that.isSpecialOffer,_that.isNewArrival,_that.isPopular,_that.isPairingSuggestion);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String subtitle,  String description,  String categoryId,  String brandId,  String farmLabel,  String unitLabel,  int pricePiasters,  int? originalPricePiasters,  String? badgeText,  String badgeTone,  String imageAsset,  double rating,  int reviewCount,  int stockCount,  bool isSpotlight,  bool isSpecialOffer,  bool isNewArrival,  bool isPopular,  bool isPairingSuggestion)?  $default,) {final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
return $default(_that.id,_that.name,_that.subtitle,_that.description,_that.categoryId,_that.brandId,_that.farmLabel,_that.unitLabel,_that.pricePiasters,_that.originalPricePiasters,_that.badgeText,_that.badgeTone,_that.imageAsset,_that.rating,_that.reviewCount,_that.stockCount,_that.isSpotlight,_that.isSpecialOffer,_that.isNewArrival,_that.isPopular,_that.isPairingSuggestion);case _:
  return null;

}
}

}

/// @nodoc


class _ProductEntity extends ProductEntity {
  const _ProductEntity({required this.id, required this.name, required this.subtitle, required this.description, required this.categoryId, required this.brandId, required this.farmLabel, required this.unitLabel, required this.pricePiasters, this.originalPricePiasters, this.badgeText, this.badgeTone = 'primary', required this.imageAsset, required this.rating, required this.reviewCount, required this.stockCount, required this.isSpotlight, required this.isSpecialOffer, required this.isNewArrival, required this.isPopular, required this.isPairingSuggestion}): super._();
  

@override final  String id;
@override final  String name;
@override final  String subtitle;
@override final  String description;
@override final  String categoryId;
@override final  String brandId;
@override final  String farmLabel;
@override final  String unitLabel;
@override final  int pricePiasters;
@override final  int? originalPricePiasters;
@override final  String? badgeText;
@override@JsonKey() final  String badgeTone;
@override final  String imageAsset;
@override final  double rating;
@override final  int reviewCount;
@override final  int stockCount;
@override final  bool isSpotlight;
@override final  bool isSpecialOffer;
@override final  bool isNewArrival;
@override final  bool isPopular;
@override final  bool isPairingSuggestion;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductEntityCopyWith<_ProductEntity> get copyWith => __$ProductEntityCopyWithImpl<_ProductEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.farmLabel, farmLabel) || other.farmLabel == farmLabel)&&(identical(other.unitLabel, unitLabel) || other.unitLabel == unitLabel)&&(identical(other.pricePiasters, pricePiasters) || other.pricePiasters == pricePiasters)&&(identical(other.originalPricePiasters, originalPricePiasters) || other.originalPricePiasters == originalPricePiasters)&&(identical(other.badgeText, badgeText) || other.badgeText == badgeText)&&(identical(other.badgeTone, badgeTone) || other.badgeTone == badgeTone)&&(identical(other.imageAsset, imageAsset) || other.imageAsset == imageAsset)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.stockCount, stockCount) || other.stockCount == stockCount)&&(identical(other.isSpotlight, isSpotlight) || other.isSpotlight == isSpotlight)&&(identical(other.isSpecialOffer, isSpecialOffer) || other.isSpecialOffer == isSpecialOffer)&&(identical(other.isNewArrival, isNewArrival) || other.isNewArrival == isNewArrival)&&(identical(other.isPopular, isPopular) || other.isPopular == isPopular)&&(identical(other.isPairingSuggestion, isPairingSuggestion) || other.isPairingSuggestion == isPairingSuggestion));
}


@override
int get hashCode {
    return Object.hashAll([runtimeType,id,name,subtitle,description,categoryId,brandId,farmLabel,unitLabel,pricePiasters,originalPricePiasters,badgeText,badgeTone,imageAsset,rating,reviewCount,stockCount,isSpotlight,isSpecialOffer,isNewArrival,isPopular,isPairingSuggestion]);
}

@override
String toString() {
    return 'ProductEntity(id: $id, name: $name, subtitle: $subtitle, description: $description, categoryId: $categoryId, brandId: $brandId, farmLabel: $farmLabel, unitLabel: $unitLabel, pricePiasters: $pricePiasters, originalPricePiasters: $originalPricePiasters, badgeText: $badgeText, badgeTone: $badgeTone, imageAsset: $imageAsset, rating: $rating, reviewCount: $reviewCount, stockCount: $stockCount, isSpotlight: $isSpotlight, isSpecialOffer: $isSpecialOffer, isNewArrival: $isNewArrival, isPopular: $isPopular, isPairingSuggestion: $isPairingSuggestion)';
}


}

/// @nodoc
abstract mixin class _$ProductEntityCopyWith<$Res> implements $ProductEntityCopyWith<$Res> {
  factory _$ProductEntityCopyWith(_ProductEntity value, $Res Function(_ProductEntity) _then) = __$ProductEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String subtitle, String description, String categoryId, String brandId, String farmLabel, String unitLabel, int pricePiasters, int? originalPricePiasters, String? badgeText, String badgeTone, String imageAsset, double rating, int reviewCount, int stockCount, bool isSpotlight, bool isSpecialOffer, bool isNewArrival, bool isPopular, bool isPairingSuggestion
});




}
/// @nodoc
class __$ProductEntityCopyWithImpl<$Res>
    implements _$ProductEntityCopyWith<$Res> {
  __$ProductEntityCopyWithImpl(this._self, this._then);

  final _ProductEntity _self;
  final $Res Function(_ProductEntity) _then;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? subtitle = null,Object? description = null,Object? categoryId = null,Object? brandId = null,Object? farmLabel = null,Object? unitLabel = null,Object? pricePiasters = null,Object? originalPricePiasters = freezed,Object? badgeText = freezed,Object? badgeTone = null,Object? imageAsset = null,Object? rating = null,Object? reviewCount = null,Object? stockCount = null,Object? isSpotlight = null,Object? isSpecialOffer = null,Object? isNewArrival = null,Object? isPopular = null,Object? isPairingSuggestion = null,}) {
  return _then(_ProductEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as String,farmLabel: null == farmLabel ? _self.farmLabel : farmLabel // ignore: cast_nullable_to_non_nullable
as String,unitLabel: null == unitLabel ? _self.unitLabel : unitLabel // ignore: cast_nullable_to_non_nullable
as String,pricePiasters: null == pricePiasters ? _self.pricePiasters : pricePiasters // ignore: cast_nullable_to_non_nullable
as int,originalPricePiasters: freezed == originalPricePiasters ? _self.originalPricePiasters : originalPricePiasters // ignore: cast_nullable_to_non_nullable
as int?,badgeText: freezed == badgeText ? _self.badgeText : badgeText // ignore: cast_nullable_to_non_nullable
as String?,badgeTone: null == badgeTone ? _self.badgeTone : badgeTone // ignore: cast_nullable_to_non_nullable
as String,imageAsset: null == imageAsset ? _self.imageAsset : imageAsset // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,stockCount: null == stockCount ? _self.stockCount : stockCount // ignore: cast_nullable_to_non_nullable
as int,isSpotlight: null == isSpotlight ? _self.isSpotlight : isSpotlight // ignore: cast_nullable_to_non_nullable
as bool,isSpecialOffer: null == isSpecialOffer ? _self.isSpecialOffer : isSpecialOffer // ignore: cast_nullable_to_non_nullable
as bool,isNewArrival: null == isNewArrival ? _self.isNewArrival : isNewArrival // ignore: cast_nullable_to_non_nullable
as bool,isPopular: null == isPopular ? _self.isPopular : isPopular // ignore: cast_nullable_to_non_nullable
as bool,isPairingSuggestion: null == isPairingSuggestion ? _self.isPairingSuggestion : isPairingSuggestion // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
