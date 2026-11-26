// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryEntity {

 String get id; String get name; String get subtitle; String get imageAsset; String get bannerTitle; String get bannerSubtitle; String get bannerBadge; String get bannerDiscountText; int get sortOrder; bool get isExploreFeatured; bool get isTrending;
/// Create a copy of CategoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryEntityCopyWith<CategoryEntity> get copyWith => _$CategoryEntityCopyWithImpl<CategoryEntity>(this as CategoryEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CategoryEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.subtitle, _this.subtitle) || other.subtitle == _this.subtitle)&&(identical(other.imageAsset, _this.imageAsset) || other.imageAsset == _this.imageAsset)&&(identical(other.bannerTitle, _this.bannerTitle) || other.bannerTitle == _this.bannerTitle)&&(identical(other.bannerSubtitle, _this.bannerSubtitle) || other.bannerSubtitle == _this.bannerSubtitle)&&(identical(other.bannerBadge, _this.bannerBadge) || other.bannerBadge == _this.bannerBadge)&&(identical(other.bannerDiscountText, _this.bannerDiscountText) || other.bannerDiscountText == _this.bannerDiscountText)&&(identical(other.sortOrder, _this.sortOrder) || other.sortOrder == _this.sortOrder)&&(identical(other.isExploreFeatured, _this.isExploreFeatured) || other.isExploreFeatured == _this.isExploreFeatured)&&(identical(other.isTrending, _this.isTrending) || other.isTrending == _this.isTrending));
}


@override
int get hashCode {
  final _this = this as CategoryEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.subtitle,_this.imageAsset,_this.bannerTitle,_this.bannerSubtitle,_this.bannerBadge,_this.bannerDiscountText,_this.sortOrder,_this.isExploreFeatured,_this.isTrending);
}

@override
String toString() {
  final _this = this as CategoryEntity;
  return 'CategoryEntity(id: ${_this.id}, name: ${_this.name}, subtitle: ${_this.subtitle}, imageAsset: ${_this.imageAsset}, bannerTitle: ${_this.bannerTitle}, bannerSubtitle: ${_this.bannerSubtitle}, bannerBadge: ${_this.bannerBadge}, bannerDiscountText: ${_this.bannerDiscountText}, sortOrder: ${_this.sortOrder}, isExploreFeatured: ${_this.isExploreFeatured}, isTrending: ${_this.isTrending})';
}


}

/// @nodoc
abstract mixin class $CategoryEntityCopyWith<$Res>  {
  factory $CategoryEntityCopyWith(CategoryEntity value, $Res Function(CategoryEntity) _then) = _$CategoryEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String subtitle, String imageAsset, String bannerTitle, String bannerSubtitle, String bannerBadge, String bannerDiscountText, int sortOrder, bool isExploreFeatured, bool isTrending
});




}
/// @nodoc
class _$CategoryEntityCopyWithImpl<$Res>
    implements $CategoryEntityCopyWith<$Res> {
  _$CategoryEntityCopyWithImpl(this._self, this._then);

  final CategoryEntity _self;
  final $Res Function(CategoryEntity) _then;

/// Create a copy of CategoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? subtitle = null,Object? imageAsset = null,Object? bannerTitle = null,Object? bannerSubtitle = null,Object? bannerBadge = null,Object? bannerDiscountText = null,Object? sortOrder = null,Object? isExploreFeatured = null,Object? isTrending = null,}) {
  return _then(CategoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageAsset: null == imageAsset ? _self.imageAsset : imageAsset // ignore: cast_nullable_to_non_nullable
as String,bannerTitle: null == bannerTitle ? _self.bannerTitle : bannerTitle // ignore: cast_nullable_to_non_nullable
as String,bannerSubtitle: null == bannerSubtitle ? _self.bannerSubtitle : bannerSubtitle // ignore: cast_nullable_to_non_nullable
as String,bannerBadge: null == bannerBadge ? _self.bannerBadge : bannerBadge // ignore: cast_nullable_to_non_nullable
as String,bannerDiscountText: null == bannerDiscountText ? _self.bannerDiscountText : bannerDiscountText // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isExploreFeatured: null == isExploreFeatured ? _self.isExploreFeatured : isExploreFeatured // ignore: cast_nullable_to_non_nullable
as bool,isTrending: null == isTrending ? _self.isTrending : isTrending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryEntity].
extension CategoryEntityPatterns on CategoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _CategoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String subtitle,  String imageAsset,  String bannerTitle,  String bannerSubtitle,  String bannerBadge,  String bannerDiscountText,  int sortOrder,  bool isExploreFeatured,  bool isTrending)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryEntity() when $default != null:
return $default(_that.id,_that.name,_that.subtitle,_that.imageAsset,_that.bannerTitle,_that.bannerSubtitle,_that.bannerBadge,_that.bannerDiscountText,_that.sortOrder,_that.isExploreFeatured,_that.isTrending);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String subtitle,  String imageAsset,  String bannerTitle,  String bannerSubtitle,  String bannerBadge,  String bannerDiscountText,  int sortOrder,  bool isExploreFeatured,  bool isTrending)  $default,) {final _that = this;
switch (_that) {
case _CategoryEntity():
return $default(_that.id,_that.name,_that.subtitle,_that.imageAsset,_that.bannerTitle,_that.bannerSubtitle,_that.bannerBadge,_that.bannerDiscountText,_that.sortOrder,_that.isExploreFeatured,_that.isTrending);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String subtitle,  String imageAsset,  String bannerTitle,  String bannerSubtitle,  String bannerBadge,  String bannerDiscountText,  int sortOrder,  bool isExploreFeatured,  bool isTrending)?  $default,) {final _that = this;
switch (_that) {
case _CategoryEntity() when $default != null:
return $default(_that.id,_that.name,_that.subtitle,_that.imageAsset,_that.bannerTitle,_that.bannerSubtitle,_that.bannerBadge,_that.bannerDiscountText,_that.sortOrder,_that.isExploreFeatured,_that.isTrending);case _:
  return null;

}
}

}

/// @nodoc


class _CategoryEntity implements CategoryEntity {
  const _CategoryEntity({required this.id, required this.name, required this.subtitle, required this.imageAsset, required this.bannerTitle, required this.bannerSubtitle, required this.bannerBadge, required this.bannerDiscountText, required this.sortOrder, required this.isExploreFeatured, required this.isTrending});
  

@override final  String id;
@override final  String name;
@override final  String subtitle;
@override final  String imageAsset;
@override final  String bannerTitle;
@override final  String bannerSubtitle;
@override final  String bannerBadge;
@override final  String bannerDiscountText;
@override final  int sortOrder;
@override final  bool isExploreFeatured;
@override final  bool isTrending;

/// Create a copy of CategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryEntityCopyWith<_CategoryEntity> get copyWith => __$CategoryEntityCopyWithImpl<_CategoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageAsset, imageAsset) || other.imageAsset == imageAsset)&&(identical(other.bannerTitle, bannerTitle) || other.bannerTitle == bannerTitle)&&(identical(other.bannerSubtitle, bannerSubtitle) || other.bannerSubtitle == bannerSubtitle)&&(identical(other.bannerBadge, bannerBadge) || other.bannerBadge == bannerBadge)&&(identical(other.bannerDiscountText, bannerDiscountText) || other.bannerDiscountText == bannerDiscountText)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.isExploreFeatured, isExploreFeatured) || other.isExploreFeatured == isExploreFeatured)&&(identical(other.isTrending, isTrending) || other.isTrending == isTrending));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,subtitle,imageAsset,bannerTitle,bannerSubtitle,bannerBadge,bannerDiscountText,sortOrder,isExploreFeatured,isTrending);
}

@override
String toString() {
    return 'CategoryEntity(id: $id, name: $name, subtitle: $subtitle, imageAsset: $imageAsset, bannerTitle: $bannerTitle, bannerSubtitle: $bannerSubtitle, bannerBadge: $bannerBadge, bannerDiscountText: $bannerDiscountText, sortOrder: $sortOrder, isExploreFeatured: $isExploreFeatured, isTrending: $isTrending)';
}


}

/// @nodoc
abstract mixin class _$CategoryEntityCopyWith<$Res> implements $CategoryEntityCopyWith<$Res> {
  factory _$CategoryEntityCopyWith(_CategoryEntity value, $Res Function(_CategoryEntity) _then) = __$CategoryEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String subtitle, String imageAsset, String bannerTitle, String bannerSubtitle, String bannerBadge, String bannerDiscountText, int sortOrder, bool isExploreFeatured, bool isTrending
});




}
/// @nodoc
class __$CategoryEntityCopyWithImpl<$Res>
    implements _$CategoryEntityCopyWith<$Res> {
  __$CategoryEntityCopyWithImpl(this._self, this._then);

  final _CategoryEntity _self;
  final $Res Function(_CategoryEntity) _then;

/// Create a copy of CategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? subtitle = null,Object? imageAsset = null,Object? bannerTitle = null,Object? bannerSubtitle = null,Object? bannerBadge = null,Object? bannerDiscountText = null,Object? sortOrder = null,Object? isExploreFeatured = null,Object? isTrending = null,}) {
  return _then(_CategoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageAsset: null == imageAsset ? _self.imageAsset : imageAsset // ignore: cast_nullable_to_non_nullable
as String,bannerTitle: null == bannerTitle ? _self.bannerTitle : bannerTitle // ignore: cast_nullable_to_non_nullable
as String,bannerSubtitle: null == bannerSubtitle ? _self.bannerSubtitle : bannerSubtitle // ignore: cast_nullable_to_non_nullable
as String,bannerBadge: null == bannerBadge ? _self.bannerBadge : bannerBadge // ignore: cast_nullable_to_non_nullable
as String,bannerDiscountText: null == bannerDiscountText ? _self.bannerDiscountText : bannerDiscountText // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,isExploreFeatured: null == isExploreFeatured ? _self.isExploreFeatured : isExploreFeatured // ignore: cast_nullable_to_non_nullable
as bool,isTrending: null == isTrending ? _self.isTrending : isTrending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
