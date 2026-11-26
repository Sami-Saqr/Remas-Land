// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_feed_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeFeedEntity {

 List<BannerEntity> get heroBanners; List<BannerEntity> get dealBanners; List<CategoryEntity> get exploreCategories; List<CategoryEntity> get allCategories; List<ProductEntity> get spotlightProducts; List<ProductEntity> get specialOffers; List<BrandEntity> get brands;
/// Create a copy of HomeFeedEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeFeedEntityCopyWith<HomeFeedEntity> get copyWith => _$HomeFeedEntityCopyWithImpl<HomeFeedEntity>(this as HomeFeedEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as HomeFeedEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeFeedEntity&&const DeepCollectionEquality().equals(other.heroBanners, _this.heroBanners)&&const DeepCollectionEquality().equals(other.dealBanners, _this.dealBanners)&&const DeepCollectionEquality().equals(other.exploreCategories, _this.exploreCategories)&&const DeepCollectionEquality().equals(other.allCategories, _this.allCategories)&&const DeepCollectionEquality().equals(other.spotlightProducts, _this.spotlightProducts)&&const DeepCollectionEquality().equals(other.specialOffers, _this.specialOffers)&&const DeepCollectionEquality().equals(other.brands, _this.brands));
}


@override
int get hashCode {
  final _this = this as HomeFeedEntity;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.heroBanners),const DeepCollectionEquality().hash(_this.dealBanners),const DeepCollectionEquality().hash(_this.exploreCategories),const DeepCollectionEquality().hash(_this.allCategories),const DeepCollectionEquality().hash(_this.spotlightProducts),const DeepCollectionEquality().hash(_this.specialOffers),const DeepCollectionEquality().hash(_this.brands));
}

@override
String toString() {
  final _this = this as HomeFeedEntity;
  return 'HomeFeedEntity(heroBanners: ${_this.heroBanners}, dealBanners: ${_this.dealBanners}, exploreCategories: ${_this.exploreCategories}, allCategories: ${_this.allCategories}, spotlightProducts: ${_this.spotlightProducts}, specialOffers: ${_this.specialOffers}, brands: ${_this.brands})';
}


}

/// @nodoc
abstract mixin class $HomeFeedEntityCopyWith<$Res>  {
  factory $HomeFeedEntityCopyWith(HomeFeedEntity value, $Res Function(HomeFeedEntity) _then) = _$HomeFeedEntityCopyWithImpl;
@useResult
$Res call({
 List<BannerEntity> heroBanners, List<BannerEntity> dealBanners, List<CategoryEntity> exploreCategories, List<CategoryEntity> allCategories, List<ProductEntity> spotlightProducts, List<ProductEntity> specialOffers, List<BrandEntity> brands
});




}
/// @nodoc
class _$HomeFeedEntityCopyWithImpl<$Res>
    implements $HomeFeedEntityCopyWith<$Res> {
  _$HomeFeedEntityCopyWithImpl(this._self, this._then);

  final HomeFeedEntity _self;
  final $Res Function(HomeFeedEntity) _then;

/// Create a copy of HomeFeedEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? heroBanners = null,Object? dealBanners = null,Object? exploreCategories = null,Object? allCategories = null,Object? spotlightProducts = null,Object? specialOffers = null,Object? brands = null,}) {
  return _then(HomeFeedEntity(
heroBanners: null == heroBanners ? _self.heroBanners : heroBanners // ignore: cast_nullable_to_non_nullable
as List<BannerEntity>,dealBanners: null == dealBanners ? _self.dealBanners : dealBanners // ignore: cast_nullable_to_non_nullable
as List<BannerEntity>,exploreCategories: null == exploreCategories ? _self.exploreCategories : exploreCategories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,allCategories: null == allCategories ? _self.allCategories : allCategories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,spotlightProducts: null == spotlightProducts ? _self.spotlightProducts : spotlightProducts // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,specialOffers: null == specialOffers ? _self.specialOffers : specialOffers // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,brands: null == brands ? _self.brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeFeedEntity].
extension HomeFeedEntityPatterns on HomeFeedEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeFeedEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeFeedEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeFeedEntity value)  $default,){
final _that = this;
switch (_that) {
case _HomeFeedEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeFeedEntity value)?  $default,){
final _that = this;
switch (_that) {
case _HomeFeedEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BannerEntity> heroBanners,  List<BannerEntity> dealBanners,  List<CategoryEntity> exploreCategories,  List<CategoryEntity> allCategories,  List<ProductEntity> spotlightProducts,  List<ProductEntity> specialOffers,  List<BrandEntity> brands)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeFeedEntity() when $default != null:
return $default(_that.heroBanners,_that.dealBanners,_that.exploreCategories,_that.allCategories,_that.spotlightProducts,_that.specialOffers,_that.brands);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BannerEntity> heroBanners,  List<BannerEntity> dealBanners,  List<CategoryEntity> exploreCategories,  List<CategoryEntity> allCategories,  List<ProductEntity> spotlightProducts,  List<ProductEntity> specialOffers,  List<BrandEntity> brands)  $default,) {final _that = this;
switch (_that) {
case _HomeFeedEntity():
return $default(_that.heroBanners,_that.dealBanners,_that.exploreCategories,_that.allCategories,_that.spotlightProducts,_that.specialOffers,_that.brands);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BannerEntity> heroBanners,  List<BannerEntity> dealBanners,  List<CategoryEntity> exploreCategories,  List<CategoryEntity> allCategories,  List<ProductEntity> spotlightProducts,  List<ProductEntity> specialOffers,  List<BrandEntity> brands)?  $default,) {final _that = this;
switch (_that) {
case _HomeFeedEntity() when $default != null:
return $default(_that.heroBanners,_that.dealBanners,_that.exploreCategories,_that.allCategories,_that.spotlightProducts,_that.specialOffers,_that.brands);case _:
  return null;

}
}

}

/// @nodoc


class _HomeFeedEntity implements HomeFeedEntity {
  const _HomeFeedEntity({required  List<BannerEntity> heroBanners, required  List<BannerEntity> dealBanners, required  List<CategoryEntity> exploreCategories, required  List<CategoryEntity> allCategories, required  List<ProductEntity> spotlightProducts, required  List<ProductEntity> specialOffers, required  List<BrandEntity> brands}): _heroBanners = heroBanners,_dealBanners = dealBanners,_exploreCategories = exploreCategories,_allCategories = allCategories,_spotlightProducts = spotlightProducts,_specialOffers = specialOffers,_brands = brands;
  

 final  List<BannerEntity> _heroBanners;
@override List<BannerEntity> get heroBanners {
  if (_heroBanners is EqualUnmodifiableListView) return _heroBanners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_heroBanners);
}

 final  List<BannerEntity> _dealBanners;
@override List<BannerEntity> get dealBanners {
  if (_dealBanners is EqualUnmodifiableListView) return _dealBanners;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dealBanners);
}

 final  List<CategoryEntity> _exploreCategories;
@override List<CategoryEntity> get exploreCategories {
  if (_exploreCategories is EqualUnmodifiableListView) return _exploreCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exploreCategories);
}

 final  List<CategoryEntity> _allCategories;
@override List<CategoryEntity> get allCategories {
  if (_allCategories is EqualUnmodifiableListView) return _allCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allCategories);
}

 final  List<ProductEntity> _spotlightProducts;
@override List<ProductEntity> get spotlightProducts {
  if (_spotlightProducts is EqualUnmodifiableListView) return _spotlightProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_spotlightProducts);
}

 final  List<ProductEntity> _specialOffers;
@override List<ProductEntity> get specialOffers {
  if (_specialOffers is EqualUnmodifiableListView) return _specialOffers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specialOffers);
}

 final  List<BrandEntity> _brands;
@override List<BrandEntity> get brands {
  if (_brands is EqualUnmodifiableListView) return _brands;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_brands);
}


/// Create a copy of HomeFeedEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeFeedEntityCopyWith<_HomeFeedEntity> get copyWith => __$HomeFeedEntityCopyWithImpl<_HomeFeedEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeFeedEntity&&const DeepCollectionEquality().equals(other.heroBanners, _heroBanners)&&const DeepCollectionEquality().equals(other.dealBanners, _dealBanners)&&const DeepCollectionEquality().equals(other.exploreCategories, _exploreCategories)&&const DeepCollectionEquality().equals(other.allCategories, _allCategories)&&const DeepCollectionEquality().equals(other.spotlightProducts, _spotlightProducts)&&const DeepCollectionEquality().equals(other.specialOffers, _specialOffers)&&const DeepCollectionEquality().equals(other.brands, _brands));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_heroBanners),const DeepCollectionEquality().hash(_dealBanners),const DeepCollectionEquality().hash(_exploreCategories),const DeepCollectionEquality().hash(_allCategories),const DeepCollectionEquality().hash(_spotlightProducts),const DeepCollectionEquality().hash(_specialOffers),const DeepCollectionEquality().hash(_brands));
}

@override
String toString() {
    return 'HomeFeedEntity(heroBanners: $heroBanners, dealBanners: $dealBanners, exploreCategories: $exploreCategories, allCategories: $allCategories, spotlightProducts: $spotlightProducts, specialOffers: $specialOffers, brands: $brands)';
}


}

/// @nodoc
abstract mixin class _$HomeFeedEntityCopyWith<$Res> implements $HomeFeedEntityCopyWith<$Res> {
  factory _$HomeFeedEntityCopyWith(_HomeFeedEntity value, $Res Function(_HomeFeedEntity) _then) = __$HomeFeedEntityCopyWithImpl;
@override @useResult
$Res call({
 List<BannerEntity> heroBanners, List<BannerEntity> dealBanners, List<CategoryEntity> exploreCategories, List<CategoryEntity> allCategories, List<ProductEntity> spotlightProducts, List<ProductEntity> specialOffers, List<BrandEntity> brands
});




}
/// @nodoc
class __$HomeFeedEntityCopyWithImpl<$Res>
    implements _$HomeFeedEntityCopyWith<$Res> {
  __$HomeFeedEntityCopyWithImpl(this._self, this._then);

  final _HomeFeedEntity _self;
  final $Res Function(_HomeFeedEntity) _then;

/// Create a copy of HomeFeedEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? heroBanners = null,Object? dealBanners = null,Object? exploreCategories = null,Object? allCategories = null,Object? spotlightProducts = null,Object? specialOffers = null,Object? brands = null,}) {
  return _then(_HomeFeedEntity(
heroBanners: null == heroBanners ? _self._heroBanners : heroBanners // ignore: cast_nullable_to_non_nullable
as List<BannerEntity>,dealBanners: null == dealBanners ? _self._dealBanners : dealBanners // ignore: cast_nullable_to_non_nullable
as List<BannerEntity>,exploreCategories: null == exploreCategories ? _self._exploreCategories : exploreCategories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,allCategories: null == allCategories ? _self._allCategories : allCategories // ignore: cast_nullable_to_non_nullable
as List<CategoryEntity>,spotlightProducts: null == spotlightProducts ? _self._spotlightProducts : spotlightProducts // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,specialOffers: null == specialOffers ? _self._specialOffers : specialOffers // ignore: cast_nullable_to_non_nullable
as List<ProductEntity>,brands: null == brands ? _self._brands : brands // ignore: cast_nullable_to_non_nullable
as List<BrandEntity>,
  ));
}


}

// dart format on
