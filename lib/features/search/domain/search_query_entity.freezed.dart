// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_query_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchQueryEntity {

 String get keyword; bool get onSaleOnly; String? get categoryId;
/// Create a copy of SearchQueryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchQueryEntityCopyWith<SearchQueryEntity> get copyWith => _$SearchQueryEntityCopyWithImpl<SearchQueryEntity>(this as SearchQueryEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SearchQueryEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchQueryEntity&&(identical(other.keyword, _this.keyword) || other.keyword == _this.keyword)&&(identical(other.onSaleOnly, _this.onSaleOnly) || other.onSaleOnly == _this.onSaleOnly)&&(identical(other.categoryId, _this.categoryId) || other.categoryId == _this.categoryId));
}


@override
int get hashCode {
  final _this = this as SearchQueryEntity;
  return Object.hash(runtimeType,_this.keyword,_this.onSaleOnly,_this.categoryId);
}

@override
String toString() {
  final _this = this as SearchQueryEntity;
  return 'SearchQueryEntity(keyword: ${_this.keyword}, onSaleOnly: ${_this.onSaleOnly}, categoryId: ${_this.categoryId})';
}


}

/// @nodoc
abstract mixin class $SearchQueryEntityCopyWith<$Res>  {
  factory $SearchQueryEntityCopyWith(SearchQueryEntity value, $Res Function(SearchQueryEntity) _then) = _$SearchQueryEntityCopyWithImpl;
@useResult
$Res call({
 String keyword, bool onSaleOnly, String? categoryId
});




}
/// @nodoc
class _$SearchQueryEntityCopyWithImpl<$Res>
    implements $SearchQueryEntityCopyWith<$Res> {
  _$SearchQueryEntityCopyWithImpl(this._self, this._then);

  final SearchQueryEntity _self;
  final $Res Function(SearchQueryEntity) _then;

/// Create a copy of SearchQueryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? keyword = null,Object? onSaleOnly = null,Object? categoryId = freezed,}) {
  return _then(SearchQueryEntity(
keyword: null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,onSaleOnly: null == onSaleOnly ? _self.onSaleOnly : onSaleOnly // ignore: cast_nullable_to_non_nullable
as bool,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchQueryEntity].
extension SearchQueryEntityPatterns on SearchQueryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchQueryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchQueryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchQueryEntity value)  $default,){
final _that = this;
switch (_that) {
case _SearchQueryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchQueryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SearchQueryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String keyword,  bool onSaleOnly,  String? categoryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchQueryEntity() when $default != null:
return $default(_that.keyword,_that.onSaleOnly,_that.categoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String keyword,  bool onSaleOnly,  String? categoryId)  $default,) {final _that = this;
switch (_that) {
case _SearchQueryEntity():
return $default(_that.keyword,_that.onSaleOnly,_that.categoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String keyword,  bool onSaleOnly,  String? categoryId)?  $default,) {final _that = this;
switch (_that) {
case _SearchQueryEntity() when $default != null:
return $default(_that.keyword,_that.onSaleOnly,_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc


class _SearchQueryEntity implements SearchQueryEntity {
  const _SearchQueryEntity({this.keyword = '', this.onSaleOnly = false, this.categoryId});
  

@override@JsonKey() final  String keyword;
@override@JsonKey() final  bool onSaleOnly;
@override final  String? categoryId;

/// Create a copy of SearchQueryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchQueryEntityCopyWith<_SearchQueryEntity> get copyWith => __$SearchQueryEntityCopyWithImpl<_SearchQueryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchQueryEntity&&(identical(other.keyword, keyword) || other.keyword == keyword)&&(identical(other.onSaleOnly, onSaleOnly) || other.onSaleOnly == onSaleOnly)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,keyword,onSaleOnly,categoryId);
}

@override
String toString() {
    return 'SearchQueryEntity(keyword: $keyword, onSaleOnly: $onSaleOnly, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$SearchQueryEntityCopyWith<$Res> implements $SearchQueryEntityCopyWith<$Res> {
  factory _$SearchQueryEntityCopyWith(_SearchQueryEntity value, $Res Function(_SearchQueryEntity) _then) = __$SearchQueryEntityCopyWithImpl;
@override @useResult
$Res call({
 String keyword, bool onSaleOnly, String? categoryId
});




}
/// @nodoc
class __$SearchQueryEntityCopyWithImpl<$Res>
    implements _$SearchQueryEntityCopyWith<$Res> {
  __$SearchQueryEntityCopyWithImpl(this._self, this._then);

  final _SearchQueryEntity _self;
  final $Res Function(_SearchQueryEntity) _then;

/// Create a copy of SearchQueryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? keyword = null,Object? onSaleOnly = null,Object? categoryId = freezed,}) {
  return _then(_SearchQueryEntity(
keyword: null == keyword ? _self.keyword : keyword // ignore: cast_nullable_to_non_nullable
as String,onSaleOnly: null == onSaleOnly ? _self.onSaleOnly : onSaleOnly // ignore: cast_nullable_to_non_nullable
as bool,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
