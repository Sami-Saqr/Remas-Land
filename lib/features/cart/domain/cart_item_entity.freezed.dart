// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartItemEntity {

 ProductEntity get product; int get quantity;
/// Create a copy of CartItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemEntityCopyWith<CartItemEntity> get copyWith => _$CartItemEntityCopyWithImpl<CartItemEntity>(this as CartItemEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CartItemEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemEntity&&(identical(other.product, _this.product) || other.product == _this.product)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity));
}


@override
int get hashCode {
  final _this = this as CartItemEntity;
  return Object.hash(runtimeType,_this.product,_this.quantity);
}

@override
String toString() {
  final _this = this as CartItemEntity;
  return 'CartItemEntity(product: ${_this.product}, quantity: ${_this.quantity})';
}


}

/// @nodoc
abstract mixin class $CartItemEntityCopyWith<$Res>  {
  factory $CartItemEntityCopyWith(CartItemEntity value, $Res Function(CartItemEntity) _then) = _$CartItemEntityCopyWithImpl;
@useResult
$Res call({
 ProductEntity product, int quantity
});


$ProductEntityCopyWith<$Res> get product;

}
/// @nodoc
class _$CartItemEntityCopyWithImpl<$Res>
    implements $CartItemEntityCopyWith<$Res> {
  _$CartItemEntityCopyWithImpl(this._self, this._then);

  final CartItemEntity _self;
  final $Res Function(CartItemEntity) _then;

/// Create a copy of CartItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? product = null,Object? quantity = null,}) {
  return _then(CartItemEntity(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of CartItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<$Res> get product {
  
  return $ProductEntityCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartItemEntity].
extension CartItemEntityPatterns on CartItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _CartItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CartItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProductEntity product,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItemEntity() when $default != null:
return $default(_that.product,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProductEntity product,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _CartItemEntity():
return $default(_that.product,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProductEntity product,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _CartItemEntity() when $default != null:
return $default(_that.product,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _CartItemEntity extends CartItemEntity {
  const _CartItemEntity({required this.product, required this.quantity}): super._();
  

@override final  ProductEntity product;
@override final  int quantity;

/// Create a copy of CartItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemEntityCopyWith<_CartItemEntity> get copyWith => __$CartItemEntityCopyWithImpl<_CartItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemEntity&&(identical(other.product, product) || other.product == product)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode {
    return Object.hash(runtimeType,product,quantity);
}

@override
String toString() {
    return 'CartItemEntity(product: $product, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$CartItemEntityCopyWith<$Res> implements $CartItemEntityCopyWith<$Res> {
  factory _$CartItemEntityCopyWith(_CartItemEntity value, $Res Function(_CartItemEntity) _then) = __$CartItemEntityCopyWithImpl;
@override @useResult
$Res call({
 ProductEntity product, int quantity
});


@override $ProductEntityCopyWith<$Res> get product;

}
/// @nodoc
class __$CartItemEntityCopyWithImpl<$Res>
    implements _$CartItemEntityCopyWith<$Res> {
  __$CartItemEntityCopyWithImpl(this._self, this._then);

  final _CartItemEntity _self;
  final $Res Function(_CartItemEntity) _then;

/// Create a copy of CartItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? product = null,Object? quantity = null,}) {
  return _then(_CartItemEntity(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductEntity,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CartItemEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<$Res> get product {
  
  return $ProductEntityCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

/// @nodoc
mixin _$PromoCodeEntity {

 String get code; String get title; String get description; String get discountType; int get discountValue; int get minOrderPiasters; bool get isActive;
/// Create a copy of PromoCodeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoCodeEntityCopyWith<PromoCodeEntity> get copyWith => _$PromoCodeEntityCopyWithImpl<PromoCodeEntity>(this as PromoCodeEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PromoCodeEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoCodeEntity&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.discountType, _this.discountType) || other.discountType == _this.discountType)&&(identical(other.discountValue, _this.discountValue) || other.discountValue == _this.discountValue)&&(identical(other.minOrderPiasters, _this.minOrderPiasters) || other.minOrderPiasters == _this.minOrderPiasters)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive));
}


@override
int get hashCode {
  final _this = this as PromoCodeEntity;
  return Object.hash(runtimeType,_this.code,_this.title,_this.description,_this.discountType,_this.discountValue,_this.minOrderPiasters,_this.isActive);
}

@override
String toString() {
  final _this = this as PromoCodeEntity;
  return 'PromoCodeEntity(code: ${_this.code}, title: ${_this.title}, description: ${_this.description}, discountType: ${_this.discountType}, discountValue: ${_this.discountValue}, minOrderPiasters: ${_this.minOrderPiasters}, isActive: ${_this.isActive})';
}


}

/// @nodoc
abstract mixin class $PromoCodeEntityCopyWith<$Res>  {
  factory $PromoCodeEntityCopyWith(PromoCodeEntity value, $Res Function(PromoCodeEntity) _then) = _$PromoCodeEntityCopyWithImpl;
@useResult
$Res call({
 String code, String title, String description, String discountType, int discountValue, int minOrderPiasters, bool isActive
});




}
/// @nodoc
class _$PromoCodeEntityCopyWithImpl<$Res>
    implements $PromoCodeEntityCopyWith<$Res> {
  _$PromoCodeEntityCopyWithImpl(this._self, this._then);

  final PromoCodeEntity _self;
  final $Res Function(PromoCodeEntity) _then;

/// Create a copy of PromoCodeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? title = null,Object? description = null,Object? discountType = null,Object? discountValue = null,Object? minOrderPiasters = null,Object? isActive = null,}) {
  return _then(PromoCodeEntity(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,discountType: null == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String,discountValue: null == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as int,minOrderPiasters: null == minOrderPiasters ? _self.minOrderPiasters : minOrderPiasters // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoCodeEntity].
extension PromoCodeEntityPatterns on PromoCodeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoCodeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoCodeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoCodeEntity value)  $default,){
final _that = this;
switch (_that) {
case _PromoCodeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoCodeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PromoCodeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String title,  String description,  String discountType,  int discountValue,  int minOrderPiasters,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoCodeEntity() when $default != null:
return $default(_that.code,_that.title,_that.description,_that.discountType,_that.discountValue,_that.minOrderPiasters,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String title,  String description,  String discountType,  int discountValue,  int minOrderPiasters,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _PromoCodeEntity():
return $default(_that.code,_that.title,_that.description,_that.discountType,_that.discountValue,_that.minOrderPiasters,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String title,  String description,  String discountType,  int discountValue,  int minOrderPiasters,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _PromoCodeEntity() when $default != null:
return $default(_that.code,_that.title,_that.description,_that.discountType,_that.discountValue,_that.minOrderPiasters,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc


class _PromoCodeEntity implements PromoCodeEntity {
  const _PromoCodeEntity({required this.code, required this.title, required this.description, required this.discountType, required this.discountValue, required this.minOrderPiasters, required this.isActive});
  

@override final  String code;
@override final  String title;
@override final  String description;
@override final  String discountType;
@override final  int discountValue;
@override final  int minOrderPiasters;
@override final  bool isActive;

/// Create a copy of PromoCodeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoCodeEntityCopyWith<_PromoCodeEntity> get copyWith => __$PromoCodeEntityCopyWithImpl<_PromoCodeEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoCodeEntity&&(identical(other.code, code) || other.code == code)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.discountType, discountType) || other.discountType == discountType)&&(identical(other.discountValue, discountValue) || other.discountValue == discountValue)&&(identical(other.minOrderPiasters, minOrderPiasters) || other.minOrderPiasters == minOrderPiasters)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,title,description,discountType,discountValue,minOrderPiasters,isActive);
}

@override
String toString() {
    return 'PromoCodeEntity(code: $code, title: $title, description: $description, discountType: $discountType, discountValue: $discountValue, minOrderPiasters: $minOrderPiasters, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$PromoCodeEntityCopyWith<$Res> implements $PromoCodeEntityCopyWith<$Res> {
  factory _$PromoCodeEntityCopyWith(_PromoCodeEntity value, $Res Function(_PromoCodeEntity) _then) = __$PromoCodeEntityCopyWithImpl;
@override @useResult
$Res call({
 String code, String title, String description, String discountType, int discountValue, int minOrderPiasters, bool isActive
});




}
/// @nodoc
class __$PromoCodeEntityCopyWithImpl<$Res>
    implements _$PromoCodeEntityCopyWith<$Res> {
  __$PromoCodeEntityCopyWithImpl(this._self, this._then);

  final _PromoCodeEntity _self;
  final $Res Function(_PromoCodeEntity) _then;

/// Create a copy of PromoCodeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? title = null,Object? description = null,Object? discountType = null,Object? discountValue = null,Object? minOrderPiasters = null,Object? isActive = null,}) {
  return _then(_PromoCodeEntity(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,discountType: null == discountType ? _self.discountType : discountType // ignore: cast_nullable_to_non_nullable
as String,discountValue: null == discountValue ? _self.discountValue : discountValue // ignore: cast_nullable_to_non_nullable
as int,minOrderPiasters: null == minOrderPiasters ? _self.minOrderPiasters : minOrderPiasters // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$CartSummaryEntity {

 List<CartItemEntity> get items; int get distinctItemCount; int get totalUnits; int get subtotalPiasters; int get deliveryFeePiasters; int get packagingFeePiasters; int get itemDiscountSavingsPiasters; int get promoDiscountPiasters; int get totalPiasters; PromoCodeEntity? get appliedPromo;
/// Create a copy of CartSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartSummaryEntityCopyWith<CartSummaryEntity> get copyWith => _$CartSummaryEntityCopyWithImpl<CartSummaryEntity>(this as CartSummaryEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CartSummaryEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartSummaryEntity&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.distinctItemCount, _this.distinctItemCount) || other.distinctItemCount == _this.distinctItemCount)&&(identical(other.totalUnits, _this.totalUnits) || other.totalUnits == _this.totalUnits)&&(identical(other.subtotalPiasters, _this.subtotalPiasters) || other.subtotalPiasters == _this.subtotalPiasters)&&(identical(other.deliveryFeePiasters, _this.deliveryFeePiasters) || other.deliveryFeePiasters == _this.deliveryFeePiasters)&&(identical(other.packagingFeePiasters, _this.packagingFeePiasters) || other.packagingFeePiasters == _this.packagingFeePiasters)&&(identical(other.itemDiscountSavingsPiasters, _this.itemDiscountSavingsPiasters) || other.itemDiscountSavingsPiasters == _this.itemDiscountSavingsPiasters)&&(identical(other.promoDiscountPiasters, _this.promoDiscountPiasters) || other.promoDiscountPiasters == _this.promoDiscountPiasters)&&(identical(other.totalPiasters, _this.totalPiasters) || other.totalPiasters == _this.totalPiasters)&&(identical(other.appliedPromo, _this.appliedPromo) || other.appliedPromo == _this.appliedPromo));
}


@override
int get hashCode {
  final _this = this as CartSummaryEntity;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.distinctItemCount,_this.totalUnits,_this.subtotalPiasters,_this.deliveryFeePiasters,_this.packagingFeePiasters,_this.itemDiscountSavingsPiasters,_this.promoDiscountPiasters,_this.totalPiasters,_this.appliedPromo);
}

@override
String toString() {
  final _this = this as CartSummaryEntity;
  return 'CartSummaryEntity(items: ${_this.items}, distinctItemCount: ${_this.distinctItemCount}, totalUnits: ${_this.totalUnits}, subtotalPiasters: ${_this.subtotalPiasters}, deliveryFeePiasters: ${_this.deliveryFeePiasters}, packagingFeePiasters: ${_this.packagingFeePiasters}, itemDiscountSavingsPiasters: ${_this.itemDiscountSavingsPiasters}, promoDiscountPiasters: ${_this.promoDiscountPiasters}, totalPiasters: ${_this.totalPiasters}, appliedPromo: ${_this.appliedPromo})';
}


}

/// @nodoc
abstract mixin class $CartSummaryEntityCopyWith<$Res>  {
  factory $CartSummaryEntityCopyWith(CartSummaryEntity value, $Res Function(CartSummaryEntity) _then) = _$CartSummaryEntityCopyWithImpl;
@useResult
$Res call({
 List<CartItemEntity> items, int distinctItemCount, int totalUnits, int subtotalPiasters, int deliveryFeePiasters, int packagingFeePiasters, int itemDiscountSavingsPiasters, int promoDiscountPiasters, int totalPiasters, PromoCodeEntity? appliedPromo
});


$PromoCodeEntityCopyWith<$Res>? get appliedPromo;

}
/// @nodoc
class _$CartSummaryEntityCopyWithImpl<$Res>
    implements $CartSummaryEntityCopyWith<$Res> {
  _$CartSummaryEntityCopyWithImpl(this._self, this._then);

  final CartSummaryEntity _self;
  final $Res Function(CartSummaryEntity) _then;

/// Create a copy of CartSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? distinctItemCount = null,Object? totalUnits = null,Object? subtotalPiasters = null,Object? deliveryFeePiasters = null,Object? packagingFeePiasters = null,Object? itemDiscountSavingsPiasters = null,Object? promoDiscountPiasters = null,Object? totalPiasters = null,Object? appliedPromo = freezed,}) {
  return _then(CartSummaryEntity(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemEntity>,distinctItemCount: null == distinctItemCount ? _self.distinctItemCount : distinctItemCount // ignore: cast_nullable_to_non_nullable
as int,totalUnits: null == totalUnits ? _self.totalUnits : totalUnits // ignore: cast_nullable_to_non_nullable
as int,subtotalPiasters: null == subtotalPiasters ? _self.subtotalPiasters : subtotalPiasters // ignore: cast_nullable_to_non_nullable
as int,deliveryFeePiasters: null == deliveryFeePiasters ? _self.deliveryFeePiasters : deliveryFeePiasters // ignore: cast_nullable_to_non_nullable
as int,packagingFeePiasters: null == packagingFeePiasters ? _self.packagingFeePiasters : packagingFeePiasters // ignore: cast_nullable_to_non_nullable
as int,itemDiscountSavingsPiasters: null == itemDiscountSavingsPiasters ? _self.itemDiscountSavingsPiasters : itemDiscountSavingsPiasters // ignore: cast_nullable_to_non_nullable
as int,promoDiscountPiasters: null == promoDiscountPiasters ? _self.promoDiscountPiasters : promoDiscountPiasters // ignore: cast_nullable_to_non_nullable
as int,totalPiasters: null == totalPiasters ? _self.totalPiasters : totalPiasters // ignore: cast_nullable_to_non_nullable
as int,appliedPromo: freezed == appliedPromo ? _self.appliedPromo : appliedPromo // ignore: cast_nullable_to_non_nullable
as PromoCodeEntity?,
  ));
}
/// Create a copy of CartSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromoCodeEntityCopyWith<$Res>? get appliedPromo {
    if (_self.appliedPromo == null) {
    return null;
  }

  return $PromoCodeEntityCopyWith<$Res>(_self.appliedPromo!, (value) {
    return _then(_self.copyWith(appliedPromo: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartSummaryEntity].
extension CartSummaryEntityPatterns on CartSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _CartSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CartSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartItemEntity> items,  int distinctItemCount,  int totalUnits,  int subtotalPiasters,  int deliveryFeePiasters,  int packagingFeePiasters,  int itemDiscountSavingsPiasters,  int promoDiscountPiasters,  int totalPiasters,  PromoCodeEntity? appliedPromo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartSummaryEntity() when $default != null:
return $default(_that.items,_that.distinctItemCount,_that.totalUnits,_that.subtotalPiasters,_that.deliveryFeePiasters,_that.packagingFeePiasters,_that.itemDiscountSavingsPiasters,_that.promoDiscountPiasters,_that.totalPiasters,_that.appliedPromo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartItemEntity> items,  int distinctItemCount,  int totalUnits,  int subtotalPiasters,  int deliveryFeePiasters,  int packagingFeePiasters,  int itemDiscountSavingsPiasters,  int promoDiscountPiasters,  int totalPiasters,  PromoCodeEntity? appliedPromo)  $default,) {final _that = this;
switch (_that) {
case _CartSummaryEntity():
return $default(_that.items,_that.distinctItemCount,_that.totalUnits,_that.subtotalPiasters,_that.deliveryFeePiasters,_that.packagingFeePiasters,_that.itemDiscountSavingsPiasters,_that.promoDiscountPiasters,_that.totalPiasters,_that.appliedPromo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartItemEntity> items,  int distinctItemCount,  int totalUnits,  int subtotalPiasters,  int deliveryFeePiasters,  int packagingFeePiasters,  int itemDiscountSavingsPiasters,  int promoDiscountPiasters,  int totalPiasters,  PromoCodeEntity? appliedPromo)?  $default,) {final _that = this;
switch (_that) {
case _CartSummaryEntity() when $default != null:
return $default(_that.items,_that.distinctItemCount,_that.totalUnits,_that.subtotalPiasters,_that.deliveryFeePiasters,_that.packagingFeePiasters,_that.itemDiscountSavingsPiasters,_that.promoDiscountPiasters,_that.totalPiasters,_that.appliedPromo);case _:
  return null;

}
}

}

/// @nodoc


class _CartSummaryEntity implements CartSummaryEntity {
  const _CartSummaryEntity({required  List<CartItemEntity> items, required this.distinctItemCount, required this.totalUnits, required this.subtotalPiasters, required this.deliveryFeePiasters, required this.packagingFeePiasters, required this.itemDiscountSavingsPiasters, required this.promoDiscountPiasters, required this.totalPiasters, this.appliedPromo}): _items = items;
  

 final  List<CartItemEntity> _items;
@override List<CartItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int distinctItemCount;
@override final  int totalUnits;
@override final  int subtotalPiasters;
@override final  int deliveryFeePiasters;
@override final  int packagingFeePiasters;
@override final  int itemDiscountSavingsPiasters;
@override final  int promoDiscountPiasters;
@override final  int totalPiasters;
@override final  PromoCodeEntity? appliedPromo;

/// Create a copy of CartSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartSummaryEntityCopyWith<_CartSummaryEntity> get copyWith => __$CartSummaryEntityCopyWithImpl<_CartSummaryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartSummaryEntity&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.distinctItemCount, distinctItemCount) || other.distinctItemCount == distinctItemCount)&&(identical(other.totalUnits, totalUnits) || other.totalUnits == totalUnits)&&(identical(other.subtotalPiasters, subtotalPiasters) || other.subtotalPiasters == subtotalPiasters)&&(identical(other.deliveryFeePiasters, deliveryFeePiasters) || other.deliveryFeePiasters == deliveryFeePiasters)&&(identical(other.packagingFeePiasters, packagingFeePiasters) || other.packagingFeePiasters == packagingFeePiasters)&&(identical(other.itemDiscountSavingsPiasters, itemDiscountSavingsPiasters) || other.itemDiscountSavingsPiasters == itemDiscountSavingsPiasters)&&(identical(other.promoDiscountPiasters, promoDiscountPiasters) || other.promoDiscountPiasters == promoDiscountPiasters)&&(identical(other.totalPiasters, totalPiasters) || other.totalPiasters == totalPiasters)&&(identical(other.appliedPromo, appliedPromo) || other.appliedPromo == appliedPromo));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),distinctItemCount,totalUnits,subtotalPiasters,deliveryFeePiasters,packagingFeePiasters,itemDiscountSavingsPiasters,promoDiscountPiasters,totalPiasters,appliedPromo);
}

@override
String toString() {
    return 'CartSummaryEntity(items: $items, distinctItemCount: $distinctItemCount, totalUnits: $totalUnits, subtotalPiasters: $subtotalPiasters, deliveryFeePiasters: $deliveryFeePiasters, packagingFeePiasters: $packagingFeePiasters, itemDiscountSavingsPiasters: $itemDiscountSavingsPiasters, promoDiscountPiasters: $promoDiscountPiasters, totalPiasters: $totalPiasters, appliedPromo: $appliedPromo)';
}


}

/// @nodoc
abstract mixin class _$CartSummaryEntityCopyWith<$Res> implements $CartSummaryEntityCopyWith<$Res> {
  factory _$CartSummaryEntityCopyWith(_CartSummaryEntity value, $Res Function(_CartSummaryEntity) _then) = __$CartSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 List<CartItemEntity> items, int distinctItemCount, int totalUnits, int subtotalPiasters, int deliveryFeePiasters, int packagingFeePiasters, int itemDiscountSavingsPiasters, int promoDiscountPiasters, int totalPiasters, PromoCodeEntity? appliedPromo
});


@override $PromoCodeEntityCopyWith<$Res>? get appliedPromo;

}
/// @nodoc
class __$CartSummaryEntityCopyWithImpl<$Res>
    implements _$CartSummaryEntityCopyWith<$Res> {
  __$CartSummaryEntityCopyWithImpl(this._self, this._then);

  final _CartSummaryEntity _self;
  final $Res Function(_CartSummaryEntity) _then;

/// Create a copy of CartSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? distinctItemCount = null,Object? totalUnits = null,Object? subtotalPiasters = null,Object? deliveryFeePiasters = null,Object? packagingFeePiasters = null,Object? itemDiscountSavingsPiasters = null,Object? promoDiscountPiasters = null,Object? totalPiasters = null,Object? appliedPromo = freezed,}) {
  return _then(_CartSummaryEntity(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemEntity>,distinctItemCount: null == distinctItemCount ? _self.distinctItemCount : distinctItemCount // ignore: cast_nullable_to_non_nullable
as int,totalUnits: null == totalUnits ? _self.totalUnits : totalUnits // ignore: cast_nullable_to_non_nullable
as int,subtotalPiasters: null == subtotalPiasters ? _self.subtotalPiasters : subtotalPiasters // ignore: cast_nullable_to_non_nullable
as int,deliveryFeePiasters: null == deliveryFeePiasters ? _self.deliveryFeePiasters : deliveryFeePiasters // ignore: cast_nullable_to_non_nullable
as int,packagingFeePiasters: null == packagingFeePiasters ? _self.packagingFeePiasters : packagingFeePiasters // ignore: cast_nullable_to_non_nullable
as int,itemDiscountSavingsPiasters: null == itemDiscountSavingsPiasters ? _self.itemDiscountSavingsPiasters : itemDiscountSavingsPiasters // ignore: cast_nullable_to_non_nullable
as int,promoDiscountPiasters: null == promoDiscountPiasters ? _self.promoDiscountPiasters : promoDiscountPiasters // ignore: cast_nullable_to_non_nullable
as int,totalPiasters: null == totalPiasters ? _self.totalPiasters : totalPiasters // ignore: cast_nullable_to_non_nullable
as int,appliedPromo: freezed == appliedPromo ? _self.appliedPromo : appliedPromo // ignore: cast_nullable_to_non_nullable
as PromoCodeEntity?,
  ));
}

/// Create a copy of CartSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PromoCodeEntityCopyWith<$Res>? get appliedPromo {
    if (_self.appliedPromo == null) {
    return null;
  }

  return $PromoCodeEntityCopyWith<$Res>(_self.appliedPromo!, (value) {
    return _then(_self.copyWith(appliedPromo: value));
  });
}
}

// dart format on
