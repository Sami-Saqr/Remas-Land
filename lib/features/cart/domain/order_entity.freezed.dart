// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderItemEntity {

 int get id; String get orderId; String get productId; String get productName; String get unitLabel; String get imageAsset; int get unitPricePiasters; int get quantity;
/// Create a copy of OrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemEntityCopyWith<OrderItemEntity> get copyWith => _$OrderItemEntityCopyWithImpl<OrderItemEntity>(this as OrderItemEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OrderItemEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.orderId, _this.orderId) || other.orderId == _this.orderId)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.productName, _this.productName) || other.productName == _this.productName)&&(identical(other.unitLabel, _this.unitLabel) || other.unitLabel == _this.unitLabel)&&(identical(other.imageAsset, _this.imageAsset) || other.imageAsset == _this.imageAsset)&&(identical(other.unitPricePiasters, _this.unitPricePiasters) || other.unitPricePiasters == _this.unitPricePiasters)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity));
}


@override
int get hashCode {
  final _this = this as OrderItemEntity;
  return Object.hash(runtimeType,_this.id,_this.orderId,_this.productId,_this.productName,_this.unitLabel,_this.imageAsset,_this.unitPricePiasters,_this.quantity);
}

@override
String toString() {
  final _this = this as OrderItemEntity;
  return 'OrderItemEntity(id: ${_this.id}, orderId: ${_this.orderId}, productId: ${_this.productId}, productName: ${_this.productName}, unitLabel: ${_this.unitLabel}, imageAsset: ${_this.imageAsset}, unitPricePiasters: ${_this.unitPricePiasters}, quantity: ${_this.quantity})';
}


}

/// @nodoc
abstract mixin class $OrderItemEntityCopyWith<$Res>  {
  factory $OrderItemEntityCopyWith(OrderItemEntity value, $Res Function(OrderItemEntity) _then) = _$OrderItemEntityCopyWithImpl;
@useResult
$Res call({
 int id, String orderId, String productId, String productName, String unitLabel, String imageAsset, int unitPricePiasters, int quantity
});




}
/// @nodoc
class _$OrderItemEntityCopyWithImpl<$Res>
    implements $OrderItemEntityCopyWith<$Res> {
  _$OrderItemEntityCopyWithImpl(this._self, this._then);

  final OrderItemEntity _self;
  final $Res Function(OrderItemEntity) _then;

/// Create a copy of OrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderId = null,Object? productId = null,Object? productName = null,Object? unitLabel = null,Object? imageAsset = null,Object? unitPricePiasters = null,Object? quantity = null,}) {
  return _then(OrderItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,unitLabel: null == unitLabel ? _self.unitLabel : unitLabel // ignore: cast_nullable_to_non_nullable
as String,imageAsset: null == imageAsset ? _self.imageAsset : imageAsset // ignore: cast_nullable_to_non_nullable
as String,unitPricePiasters: null == unitPricePiasters ? _self.unitPricePiasters : unitPricePiasters // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItemEntity].
extension OrderItemEntityPatterns on OrderItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String orderId,  String productId,  String productName,  String unitLabel,  String imageAsset,  int unitPricePiasters,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItemEntity() when $default != null:
return $default(_that.id,_that.orderId,_that.productId,_that.productName,_that.unitLabel,_that.imageAsset,_that.unitPricePiasters,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String orderId,  String productId,  String productName,  String unitLabel,  String imageAsset,  int unitPricePiasters,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _OrderItemEntity():
return $default(_that.id,_that.orderId,_that.productId,_that.productName,_that.unitLabel,_that.imageAsset,_that.unitPricePiasters,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String orderId,  String productId,  String productName,  String unitLabel,  String imageAsset,  int unitPricePiasters,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _OrderItemEntity() when $default != null:
return $default(_that.id,_that.orderId,_that.productId,_that.productName,_that.unitLabel,_that.imageAsset,_that.unitPricePiasters,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _OrderItemEntity implements OrderItemEntity {
  const _OrderItemEntity({required this.id, required this.orderId, required this.productId, required this.productName, required this.unitLabel, required this.imageAsset, required this.unitPricePiasters, required this.quantity});
  

@override final  int id;
@override final  String orderId;
@override final  String productId;
@override final  String productName;
@override final  String unitLabel;
@override final  String imageAsset;
@override final  int unitPricePiasters;
@override final  int quantity;

/// Create a copy of OrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemEntityCopyWith<_OrderItemEntity> get copyWith => __$OrderItemEntityCopyWithImpl<_OrderItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.unitLabel, unitLabel) || other.unitLabel == unitLabel)&&(identical(other.imageAsset, imageAsset) || other.imageAsset == imageAsset)&&(identical(other.unitPricePiasters, unitPricePiasters) || other.unitPricePiasters == unitPricePiasters)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,orderId,productId,productName,unitLabel,imageAsset,unitPricePiasters,quantity);
}

@override
String toString() {
    return 'OrderItemEntity(id: $id, orderId: $orderId, productId: $productId, productName: $productName, unitLabel: $unitLabel, imageAsset: $imageAsset, unitPricePiasters: $unitPricePiasters, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$OrderItemEntityCopyWith<$Res> implements $OrderItemEntityCopyWith<$Res> {
  factory _$OrderItemEntityCopyWith(_OrderItemEntity value, $Res Function(_OrderItemEntity) _then) = __$OrderItemEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String orderId, String productId, String productName, String unitLabel, String imageAsset, int unitPricePiasters, int quantity
});




}
/// @nodoc
class __$OrderItemEntityCopyWithImpl<$Res>
    implements _$OrderItemEntityCopyWith<$Res> {
  __$OrderItemEntityCopyWithImpl(this._self, this._then);

  final _OrderItemEntity _self;
  final $Res Function(_OrderItemEntity) _then;

/// Create a copy of OrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderId = null,Object? productId = null,Object? productName = null,Object? unitLabel = null,Object? imageAsset = null,Object? unitPricePiasters = null,Object? quantity = null,}) {
  return _then(_OrderItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,unitLabel: null == unitLabel ? _self.unitLabel : unitLabel // ignore: cast_nullable_to_non_nullable
as String,imageAsset: null == imageAsset ? _self.imageAsset : imageAsset // ignore: cast_nullable_to_non_nullable
as String,unitPricePiasters: null == unitPricePiasters ? _self.unitPricePiasters : unitPricePiasters // ignore: cast_nullable_to_non_nullable
as int,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$OrderEntity {

 String get id; String get orderNumber; String get status; String get addressSummary; String get paymentMethod; int get subtotalPiasters; int get deliveryFeePiasters; int get packagingFeePiasters; int get discountPiasters; int get totalPiasters; String? get promoCode; DateTime get createdAt; List<OrderItemEntity> get items;
/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<OrderEntity> get copyWith => _$OrderEntityCopyWithImpl<OrderEntity>(this as OrderEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OrderEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.orderNumber, _this.orderNumber) || other.orderNumber == _this.orderNumber)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.addressSummary, _this.addressSummary) || other.addressSummary == _this.addressSummary)&&(identical(other.paymentMethod, _this.paymentMethod) || other.paymentMethod == _this.paymentMethod)&&(identical(other.subtotalPiasters, _this.subtotalPiasters) || other.subtotalPiasters == _this.subtotalPiasters)&&(identical(other.deliveryFeePiasters, _this.deliveryFeePiasters) || other.deliveryFeePiasters == _this.deliveryFeePiasters)&&(identical(other.packagingFeePiasters, _this.packagingFeePiasters) || other.packagingFeePiasters == _this.packagingFeePiasters)&&(identical(other.discountPiasters, _this.discountPiasters) || other.discountPiasters == _this.discountPiasters)&&(identical(other.totalPiasters, _this.totalPiasters) || other.totalPiasters == _this.totalPiasters)&&(identical(other.promoCode, _this.promoCode) || other.promoCode == _this.promoCode)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&const DeepCollectionEquality().equals(other.items, _this.items));
}


@override
int get hashCode {
  final _this = this as OrderEntity;
  return Object.hash(runtimeType,_this.id,_this.orderNumber,_this.status,_this.addressSummary,_this.paymentMethod,_this.subtotalPiasters,_this.deliveryFeePiasters,_this.packagingFeePiasters,_this.discountPiasters,_this.totalPiasters,_this.promoCode,_this.createdAt,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as OrderEntity;
  return 'OrderEntity(id: ${_this.id}, orderNumber: ${_this.orderNumber}, status: ${_this.status}, addressSummary: ${_this.addressSummary}, paymentMethod: ${_this.paymentMethod}, subtotalPiasters: ${_this.subtotalPiasters}, deliveryFeePiasters: ${_this.deliveryFeePiasters}, packagingFeePiasters: ${_this.packagingFeePiasters}, discountPiasters: ${_this.discountPiasters}, totalPiasters: ${_this.totalPiasters}, promoCode: ${_this.promoCode}, createdAt: ${_this.createdAt}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $OrderEntityCopyWith<$Res>  {
  factory $OrderEntityCopyWith(OrderEntity value, $Res Function(OrderEntity) _then) = _$OrderEntityCopyWithImpl;
@useResult
$Res call({
 String id, String orderNumber, String status, String addressSummary, String paymentMethod, int subtotalPiasters, int deliveryFeePiasters, int packagingFeePiasters, int discountPiasters, int totalPiasters, String? promoCode, DateTime createdAt, List<OrderItemEntity> items
});




}
/// @nodoc
class _$OrderEntityCopyWithImpl<$Res>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._self, this._then);

  final OrderEntity _self;
  final $Res Function(OrderEntity) _then;

/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderNumber = null,Object? status = null,Object? addressSummary = null,Object? paymentMethod = null,Object? subtotalPiasters = null,Object? deliveryFeePiasters = null,Object? packagingFeePiasters = null,Object? discountPiasters = null,Object? totalPiasters = null,Object? promoCode = freezed,Object? createdAt = null,Object? items = null,}) {
  return _then(OrderEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,addressSummary: null == addressSummary ? _self.addressSummary : addressSummary // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,subtotalPiasters: null == subtotalPiasters ? _self.subtotalPiasters : subtotalPiasters // ignore: cast_nullable_to_non_nullable
as int,deliveryFeePiasters: null == deliveryFeePiasters ? _self.deliveryFeePiasters : deliveryFeePiasters // ignore: cast_nullable_to_non_nullable
as int,packagingFeePiasters: null == packagingFeePiasters ? _self.packagingFeePiasters : packagingFeePiasters // ignore: cast_nullable_to_non_nullable
as int,discountPiasters: null == discountPiasters ? _self.discountPiasters : discountPiasters // ignore: cast_nullable_to_non_nullable
as int,totalPiasters: null == totalPiasters ? _self.totalPiasters : totalPiasters // ignore: cast_nullable_to_non_nullable
as int,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderEntity].
extension OrderEntityPatterns on OrderEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrderEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String orderNumber,  String status,  String addressSummary,  String paymentMethod,  int subtotalPiasters,  int deliveryFeePiasters,  int packagingFeePiasters,  int discountPiasters,  int totalPiasters,  String? promoCode,  DateTime createdAt,  List<OrderItemEntity> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.orderNumber,_that.status,_that.addressSummary,_that.paymentMethod,_that.subtotalPiasters,_that.deliveryFeePiasters,_that.packagingFeePiasters,_that.discountPiasters,_that.totalPiasters,_that.promoCode,_that.createdAt,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String orderNumber,  String status,  String addressSummary,  String paymentMethod,  int subtotalPiasters,  int deliveryFeePiasters,  int packagingFeePiasters,  int discountPiasters,  int totalPiasters,  String? promoCode,  DateTime createdAt,  List<OrderItemEntity> items)  $default,) {final _that = this;
switch (_that) {
case _OrderEntity():
return $default(_that.id,_that.orderNumber,_that.status,_that.addressSummary,_that.paymentMethod,_that.subtotalPiasters,_that.deliveryFeePiasters,_that.packagingFeePiasters,_that.discountPiasters,_that.totalPiasters,_that.promoCode,_that.createdAt,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String orderNumber,  String status,  String addressSummary,  String paymentMethod,  int subtotalPiasters,  int deliveryFeePiasters,  int packagingFeePiasters,  int discountPiasters,  int totalPiasters,  String? promoCode,  DateTime createdAt,  List<OrderItemEntity> items)?  $default,) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.orderNumber,_that.status,_that.addressSummary,_that.paymentMethod,_that.subtotalPiasters,_that.deliveryFeePiasters,_that.packagingFeePiasters,_that.discountPiasters,_that.totalPiasters,_that.promoCode,_that.createdAt,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _OrderEntity implements OrderEntity {
  const _OrderEntity({required this.id, required this.orderNumber, required this.status, required this.addressSummary, required this.paymentMethod, required this.subtotalPiasters, required this.deliveryFeePiasters, required this.packagingFeePiasters, required this.discountPiasters, required this.totalPiasters, this.promoCode, required this.createdAt, required  List<OrderItemEntity> items}): _items = items;
  

@override final  String id;
@override final  String orderNumber;
@override final  String status;
@override final  String addressSummary;
@override final  String paymentMethod;
@override final  int subtotalPiasters;
@override final  int deliveryFeePiasters;
@override final  int packagingFeePiasters;
@override final  int discountPiasters;
@override final  int totalPiasters;
@override final  String? promoCode;
@override final  DateTime createdAt;
 final  List<OrderItemEntity> _items;
@override List<OrderItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderEntityCopyWith<_OrderEntity> get copyWith => __$OrderEntityCopyWithImpl<_OrderEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.addressSummary, addressSummary) || other.addressSummary == addressSummary)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.subtotalPiasters, subtotalPiasters) || other.subtotalPiasters == subtotalPiasters)&&(identical(other.deliveryFeePiasters, deliveryFeePiasters) || other.deliveryFeePiasters == deliveryFeePiasters)&&(identical(other.packagingFeePiasters, packagingFeePiasters) || other.packagingFeePiasters == packagingFeePiasters)&&(identical(other.discountPiasters, discountPiasters) || other.discountPiasters == discountPiasters)&&(identical(other.totalPiasters, totalPiasters) || other.totalPiasters == totalPiasters)&&(identical(other.promoCode, promoCode) || other.promoCode == promoCode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.items, _items));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,orderNumber,status,addressSummary,paymentMethod,subtotalPiasters,deliveryFeePiasters,packagingFeePiasters,discountPiasters,totalPiasters,promoCode,createdAt,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'OrderEntity(id: $id, orderNumber: $orderNumber, status: $status, addressSummary: $addressSummary, paymentMethod: $paymentMethod, subtotalPiasters: $subtotalPiasters, deliveryFeePiasters: $deliveryFeePiasters, packagingFeePiasters: $packagingFeePiasters, discountPiasters: $discountPiasters, totalPiasters: $totalPiasters, promoCode: $promoCode, createdAt: $createdAt, items: $items)';
}


}

/// @nodoc
abstract mixin class _$OrderEntityCopyWith<$Res> implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(_OrderEntity value, $Res Function(_OrderEntity) _then) = __$OrderEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String orderNumber, String status, String addressSummary, String paymentMethod, int subtotalPiasters, int deliveryFeePiasters, int packagingFeePiasters, int discountPiasters, int totalPiasters, String? promoCode, DateTime createdAt, List<OrderItemEntity> items
});




}
/// @nodoc
class __$OrderEntityCopyWithImpl<$Res>
    implements _$OrderEntityCopyWith<$Res> {
  __$OrderEntityCopyWithImpl(this._self, this._then);

  final _OrderEntity _self;
  final $Res Function(_OrderEntity) _then;

/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderNumber = null,Object? status = null,Object? addressSummary = null,Object? paymentMethod = null,Object? subtotalPiasters = null,Object? deliveryFeePiasters = null,Object? packagingFeePiasters = null,Object? discountPiasters = null,Object? totalPiasters = null,Object? promoCode = freezed,Object? createdAt = null,Object? items = null,}) {
  return _then(_OrderEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,addressSummary: null == addressSummary ? _self.addressSummary : addressSummary // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,subtotalPiasters: null == subtotalPiasters ? _self.subtotalPiasters : subtotalPiasters // ignore: cast_nullable_to_non_nullable
as int,deliveryFeePiasters: null == deliveryFeePiasters ? _self.deliveryFeePiasters : deliveryFeePiasters // ignore: cast_nullable_to_non_nullable
as int,packagingFeePiasters: null == packagingFeePiasters ? _self.packagingFeePiasters : packagingFeePiasters // ignore: cast_nullable_to_non_nullable
as int,discountPiasters: null == discountPiasters ? _self.discountPiasters : discountPiasters // ignore: cast_nullable_to_non_nullable
as int,totalPiasters: null == totalPiasters ? _self.totalPiasters : totalPiasters // ignore: cast_nullable_to_non_nullable
as int,promoCode: freezed == promoCode ? _self.promoCode : promoCode // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemEntity>,
  ));
}


}

// dart format on
