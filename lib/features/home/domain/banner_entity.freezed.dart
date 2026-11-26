// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BannerEntity {

 String get id; String get badgeText; String get title; String? get subtitle; String get ctaLabel; String get targetCategoryId; String get imageAsset; int get gradientStartHex; int get gradientEndHex; int get ctaTextColorHex; String get bannerType; int get sortOrder;
/// Create a copy of BannerEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerEntityCopyWith<BannerEntity> get copyWith => _$BannerEntityCopyWithImpl<BannerEntity>(this as BannerEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BannerEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BannerEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.badgeText, _this.badgeText) || other.badgeText == _this.badgeText)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.subtitle, _this.subtitle) || other.subtitle == _this.subtitle)&&(identical(other.ctaLabel, _this.ctaLabel) || other.ctaLabel == _this.ctaLabel)&&(identical(other.targetCategoryId, _this.targetCategoryId) || other.targetCategoryId == _this.targetCategoryId)&&(identical(other.imageAsset, _this.imageAsset) || other.imageAsset == _this.imageAsset)&&(identical(other.gradientStartHex, _this.gradientStartHex) || other.gradientStartHex == _this.gradientStartHex)&&(identical(other.gradientEndHex, _this.gradientEndHex) || other.gradientEndHex == _this.gradientEndHex)&&(identical(other.ctaTextColorHex, _this.ctaTextColorHex) || other.ctaTextColorHex == _this.ctaTextColorHex)&&(identical(other.bannerType, _this.bannerType) || other.bannerType == _this.bannerType)&&(identical(other.sortOrder, _this.sortOrder) || other.sortOrder == _this.sortOrder));
}


@override
int get hashCode {
  final _this = this as BannerEntity;
  return Object.hash(runtimeType,_this.id,_this.badgeText,_this.title,_this.subtitle,_this.ctaLabel,_this.targetCategoryId,_this.imageAsset,_this.gradientStartHex,_this.gradientEndHex,_this.ctaTextColorHex,_this.bannerType,_this.sortOrder);
}

@override
String toString() {
  final _this = this as BannerEntity;
  return 'BannerEntity(id: ${_this.id}, badgeText: ${_this.badgeText}, title: ${_this.title}, subtitle: ${_this.subtitle}, ctaLabel: ${_this.ctaLabel}, targetCategoryId: ${_this.targetCategoryId}, imageAsset: ${_this.imageAsset}, gradientStartHex: ${_this.gradientStartHex}, gradientEndHex: ${_this.gradientEndHex}, ctaTextColorHex: ${_this.ctaTextColorHex}, bannerType: ${_this.bannerType}, sortOrder: ${_this.sortOrder})';
}


}

/// @nodoc
abstract mixin class $BannerEntityCopyWith<$Res>  {
  factory $BannerEntityCopyWith(BannerEntity value, $Res Function(BannerEntity) _then) = _$BannerEntityCopyWithImpl;
@useResult
$Res call({
 String id, String badgeText, String title, String? subtitle, String ctaLabel, String targetCategoryId, String imageAsset, int gradientStartHex, int gradientEndHex, int ctaTextColorHex, String bannerType, int sortOrder
});




}
/// @nodoc
class _$BannerEntityCopyWithImpl<$Res>
    implements $BannerEntityCopyWith<$Res> {
  _$BannerEntityCopyWithImpl(this._self, this._then);

  final BannerEntity _self;
  final $Res Function(BannerEntity) _then;

/// Create a copy of BannerEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? badgeText = null,Object? title = null,Object? subtitle = freezed,Object? ctaLabel = null,Object? targetCategoryId = null,Object? imageAsset = null,Object? gradientStartHex = null,Object? gradientEndHex = null,Object? ctaTextColorHex = null,Object? bannerType = null,Object? sortOrder = null,}) {
  return _then(BannerEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,badgeText: null == badgeText ? _self.badgeText : badgeText // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,ctaLabel: null == ctaLabel ? _self.ctaLabel : ctaLabel // ignore: cast_nullable_to_non_nullable
as String,targetCategoryId: null == targetCategoryId ? _self.targetCategoryId : targetCategoryId // ignore: cast_nullable_to_non_nullable
as String,imageAsset: null == imageAsset ? _self.imageAsset : imageAsset // ignore: cast_nullable_to_non_nullable
as String,gradientStartHex: null == gradientStartHex ? _self.gradientStartHex : gradientStartHex // ignore: cast_nullable_to_non_nullable
as int,gradientEndHex: null == gradientEndHex ? _self.gradientEndHex : gradientEndHex // ignore: cast_nullable_to_non_nullable
as int,ctaTextColorHex: null == ctaTextColorHex ? _self.ctaTextColorHex : ctaTextColorHex // ignore: cast_nullable_to_non_nullable
as int,bannerType: null == bannerType ? _self.bannerType : bannerType // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BannerEntity].
extension BannerEntityPatterns on BannerEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BannerEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BannerEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BannerEntity value)  $default,){
final _that = this;
switch (_that) {
case _BannerEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BannerEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BannerEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String badgeText,  String title,  String? subtitle,  String ctaLabel,  String targetCategoryId,  String imageAsset,  int gradientStartHex,  int gradientEndHex,  int ctaTextColorHex,  String bannerType,  int sortOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BannerEntity() when $default != null:
return $default(_that.id,_that.badgeText,_that.title,_that.subtitle,_that.ctaLabel,_that.targetCategoryId,_that.imageAsset,_that.gradientStartHex,_that.gradientEndHex,_that.ctaTextColorHex,_that.bannerType,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String badgeText,  String title,  String? subtitle,  String ctaLabel,  String targetCategoryId,  String imageAsset,  int gradientStartHex,  int gradientEndHex,  int ctaTextColorHex,  String bannerType,  int sortOrder)  $default,) {final _that = this;
switch (_that) {
case _BannerEntity():
return $default(_that.id,_that.badgeText,_that.title,_that.subtitle,_that.ctaLabel,_that.targetCategoryId,_that.imageAsset,_that.gradientStartHex,_that.gradientEndHex,_that.ctaTextColorHex,_that.bannerType,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String badgeText,  String title,  String? subtitle,  String ctaLabel,  String targetCategoryId,  String imageAsset,  int gradientStartHex,  int gradientEndHex,  int ctaTextColorHex,  String bannerType,  int sortOrder)?  $default,) {final _that = this;
switch (_that) {
case _BannerEntity() when $default != null:
return $default(_that.id,_that.badgeText,_that.title,_that.subtitle,_that.ctaLabel,_that.targetCategoryId,_that.imageAsset,_that.gradientStartHex,_that.gradientEndHex,_that.ctaTextColorHex,_that.bannerType,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc


class _BannerEntity implements BannerEntity {
  const _BannerEntity({required this.id, required this.badgeText, required this.title, this.subtitle, required this.ctaLabel, required this.targetCategoryId, required this.imageAsset, required this.gradientStartHex, required this.gradientEndHex, required this.ctaTextColorHex, required this.bannerType, required this.sortOrder});
  

@override final  String id;
@override final  String badgeText;
@override final  String title;
@override final  String? subtitle;
@override final  String ctaLabel;
@override final  String targetCategoryId;
@override final  String imageAsset;
@override final  int gradientStartHex;
@override final  int gradientEndHex;
@override final  int ctaTextColorHex;
@override final  String bannerType;
@override final  int sortOrder;

/// Create a copy of BannerEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerEntityCopyWith<_BannerEntity> get copyWith => __$BannerEntityCopyWithImpl<_BannerEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BannerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.badgeText, badgeText) || other.badgeText == badgeText)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.ctaLabel, ctaLabel) || other.ctaLabel == ctaLabel)&&(identical(other.targetCategoryId, targetCategoryId) || other.targetCategoryId == targetCategoryId)&&(identical(other.imageAsset, imageAsset) || other.imageAsset == imageAsset)&&(identical(other.gradientStartHex, gradientStartHex) || other.gradientStartHex == gradientStartHex)&&(identical(other.gradientEndHex, gradientEndHex) || other.gradientEndHex == gradientEndHex)&&(identical(other.ctaTextColorHex, ctaTextColorHex) || other.ctaTextColorHex == ctaTextColorHex)&&(identical(other.bannerType, bannerType) || other.bannerType == bannerType)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,badgeText,title,subtitle,ctaLabel,targetCategoryId,imageAsset,gradientStartHex,gradientEndHex,ctaTextColorHex,bannerType,sortOrder);
}

@override
String toString() {
    return 'BannerEntity(id: $id, badgeText: $badgeText, title: $title, subtitle: $subtitle, ctaLabel: $ctaLabel, targetCategoryId: $targetCategoryId, imageAsset: $imageAsset, gradientStartHex: $gradientStartHex, gradientEndHex: $gradientEndHex, ctaTextColorHex: $ctaTextColorHex, bannerType: $bannerType, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$BannerEntityCopyWith<$Res> implements $BannerEntityCopyWith<$Res> {
  factory _$BannerEntityCopyWith(_BannerEntity value, $Res Function(_BannerEntity) _then) = __$BannerEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String badgeText, String title, String? subtitle, String ctaLabel, String targetCategoryId, String imageAsset, int gradientStartHex, int gradientEndHex, int ctaTextColorHex, String bannerType, int sortOrder
});




}
/// @nodoc
class __$BannerEntityCopyWithImpl<$Res>
    implements _$BannerEntityCopyWith<$Res> {
  __$BannerEntityCopyWithImpl(this._self, this._then);

  final _BannerEntity _self;
  final $Res Function(_BannerEntity) _then;

/// Create a copy of BannerEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? badgeText = null,Object? title = null,Object? subtitle = freezed,Object? ctaLabel = null,Object? targetCategoryId = null,Object? imageAsset = null,Object? gradientStartHex = null,Object? gradientEndHex = null,Object? ctaTextColorHex = null,Object? bannerType = null,Object? sortOrder = null,}) {
  return _then(_BannerEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,badgeText: null == badgeText ? _self.badgeText : badgeText // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,ctaLabel: null == ctaLabel ? _self.ctaLabel : ctaLabel // ignore: cast_nullable_to_non_nullable
as String,targetCategoryId: null == targetCategoryId ? _self.targetCategoryId : targetCategoryId // ignore: cast_nullable_to_non_nullable
as String,imageAsset: null == imageAsset ? _self.imageAsset : imageAsset // ignore: cast_nullable_to_non_nullable
as String,gradientStartHex: null == gradientStartHex ? _self.gradientStartHex : gradientStartHex // ignore: cast_nullable_to_non_nullable
as int,gradientEndHex: null == gradientEndHex ? _self.gradientEndHex : gradientEndHex // ignore: cast_nullable_to_non_nullable
as int,ctaTextColorHex: null == ctaTextColorHex ? _self.ctaTextColorHex : ctaTextColorHex // ignore: cast_nullable_to_non_nullable
as int,bannerType: null == bannerType ? _self.bannerType : bannerType // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
