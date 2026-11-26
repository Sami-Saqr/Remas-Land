// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletEntity {

 String get id; int get balancePiasters; bool get isPrivilegeActive; String get cardLast4; String get cardHolder; String get cardExpiry; int get cashbackPercent;
/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletEntityCopyWith<WalletEntity> get copyWith => _$WalletEntityCopyWithImpl<WalletEntity>(this as WalletEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WalletEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.balancePiasters, _this.balancePiasters) || other.balancePiasters == _this.balancePiasters)&&(identical(other.isPrivilegeActive, _this.isPrivilegeActive) || other.isPrivilegeActive == _this.isPrivilegeActive)&&(identical(other.cardLast4, _this.cardLast4) || other.cardLast4 == _this.cardLast4)&&(identical(other.cardHolder, _this.cardHolder) || other.cardHolder == _this.cardHolder)&&(identical(other.cardExpiry, _this.cardExpiry) || other.cardExpiry == _this.cardExpiry)&&(identical(other.cashbackPercent, _this.cashbackPercent) || other.cashbackPercent == _this.cashbackPercent));
}


@override
int get hashCode {
  final _this = this as WalletEntity;
  return Object.hash(runtimeType,_this.id,_this.balancePiasters,_this.isPrivilegeActive,_this.cardLast4,_this.cardHolder,_this.cardExpiry,_this.cashbackPercent);
}

@override
String toString() {
  final _this = this as WalletEntity;
  return 'WalletEntity(id: ${_this.id}, balancePiasters: ${_this.balancePiasters}, isPrivilegeActive: ${_this.isPrivilegeActive}, cardLast4: ${_this.cardLast4}, cardHolder: ${_this.cardHolder}, cardExpiry: ${_this.cardExpiry}, cashbackPercent: ${_this.cashbackPercent})';
}


}

/// @nodoc
abstract mixin class $WalletEntityCopyWith<$Res>  {
  factory $WalletEntityCopyWith(WalletEntity value, $Res Function(WalletEntity) _then) = _$WalletEntityCopyWithImpl;
@useResult
$Res call({
 String id, int balancePiasters, bool isPrivilegeActive, String cardLast4, String cardHolder, String cardExpiry, int cashbackPercent
});




}
/// @nodoc
class _$WalletEntityCopyWithImpl<$Res>
    implements $WalletEntityCopyWith<$Res> {
  _$WalletEntityCopyWithImpl(this._self, this._then);

  final WalletEntity _self;
  final $Res Function(WalletEntity) _then;

/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? balancePiasters = null,Object? isPrivilegeActive = null,Object? cardLast4 = null,Object? cardHolder = null,Object? cardExpiry = null,Object? cashbackPercent = null,}) {
  return _then(WalletEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,balancePiasters: null == balancePiasters ? _self.balancePiasters : balancePiasters // ignore: cast_nullable_to_non_nullable
as int,isPrivilegeActive: null == isPrivilegeActive ? _self.isPrivilegeActive : isPrivilegeActive // ignore: cast_nullable_to_non_nullable
as bool,cardLast4: null == cardLast4 ? _self.cardLast4 : cardLast4 // ignore: cast_nullable_to_non_nullable
as String,cardHolder: null == cardHolder ? _self.cardHolder : cardHolder // ignore: cast_nullable_to_non_nullable
as String,cardExpiry: null == cardExpiry ? _self.cardExpiry : cardExpiry // ignore: cast_nullable_to_non_nullable
as String,cashbackPercent: null == cashbackPercent ? _self.cashbackPercent : cashbackPercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletEntity].
extension WalletEntityPatterns on WalletEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletEntity value)  $default,){
final _that = this;
switch (_that) {
case _WalletEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int balancePiasters,  bool isPrivilegeActive,  String cardLast4,  String cardHolder,  String cardExpiry,  int cashbackPercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
return $default(_that.id,_that.balancePiasters,_that.isPrivilegeActive,_that.cardLast4,_that.cardHolder,_that.cardExpiry,_that.cashbackPercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int balancePiasters,  bool isPrivilegeActive,  String cardLast4,  String cardHolder,  String cardExpiry,  int cashbackPercent)  $default,) {final _that = this;
switch (_that) {
case _WalletEntity():
return $default(_that.id,_that.balancePiasters,_that.isPrivilegeActive,_that.cardLast4,_that.cardHolder,_that.cardExpiry,_that.cashbackPercent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int balancePiasters,  bool isPrivilegeActive,  String cardLast4,  String cardHolder,  String cardExpiry,  int cashbackPercent)?  $default,) {final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
return $default(_that.id,_that.balancePiasters,_that.isPrivilegeActive,_that.cardLast4,_that.cardHolder,_that.cardExpiry,_that.cashbackPercent);case _:
  return null;

}
}

}

/// @nodoc


class _WalletEntity implements WalletEntity {
  const _WalletEntity({required this.id, required this.balancePiasters, required this.isPrivilegeActive, required this.cardLast4, required this.cardHolder, required this.cardExpiry, required this.cashbackPercent});
  

@override final  String id;
@override final  int balancePiasters;
@override final  bool isPrivilegeActive;
@override final  String cardLast4;
@override final  String cardHolder;
@override final  String cardExpiry;
@override final  int cashbackPercent;

/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletEntityCopyWith<_WalletEntity> get copyWith => __$WalletEntityCopyWithImpl<_WalletEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.balancePiasters, balancePiasters) || other.balancePiasters == balancePiasters)&&(identical(other.isPrivilegeActive, isPrivilegeActive) || other.isPrivilegeActive == isPrivilegeActive)&&(identical(other.cardLast4, cardLast4) || other.cardLast4 == cardLast4)&&(identical(other.cardHolder, cardHolder) || other.cardHolder == cardHolder)&&(identical(other.cardExpiry, cardExpiry) || other.cardExpiry == cardExpiry)&&(identical(other.cashbackPercent, cashbackPercent) || other.cashbackPercent == cashbackPercent));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,balancePiasters,isPrivilegeActive,cardLast4,cardHolder,cardExpiry,cashbackPercent);
}

@override
String toString() {
    return 'WalletEntity(id: $id, balancePiasters: $balancePiasters, isPrivilegeActive: $isPrivilegeActive, cardLast4: $cardLast4, cardHolder: $cardHolder, cardExpiry: $cardExpiry, cashbackPercent: $cashbackPercent)';
}


}

/// @nodoc
abstract mixin class _$WalletEntityCopyWith<$Res> implements $WalletEntityCopyWith<$Res> {
  factory _$WalletEntityCopyWith(_WalletEntity value, $Res Function(_WalletEntity) _then) = __$WalletEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, int balancePiasters, bool isPrivilegeActive, String cardLast4, String cardHolder, String cardExpiry, int cashbackPercent
});




}
/// @nodoc
class __$WalletEntityCopyWithImpl<$Res>
    implements _$WalletEntityCopyWith<$Res> {
  __$WalletEntityCopyWithImpl(this._self, this._then);

  final _WalletEntity _self;
  final $Res Function(_WalletEntity) _then;

/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? balancePiasters = null,Object? isPrivilegeActive = null,Object? cardLast4 = null,Object? cardHolder = null,Object? cardExpiry = null,Object? cashbackPercent = null,}) {
  return _then(_WalletEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,balancePiasters: null == balancePiasters ? _self.balancePiasters : balancePiasters // ignore: cast_nullable_to_non_nullable
as int,isPrivilegeActive: null == isPrivilegeActive ? _self.isPrivilegeActive : isPrivilegeActive // ignore: cast_nullable_to_non_nullable
as bool,cardLast4: null == cardLast4 ? _self.cardLast4 : cardLast4 // ignore: cast_nullable_to_non_nullable
as String,cardHolder: null == cardHolder ? _self.cardHolder : cardHolder // ignore: cast_nullable_to_non_nullable
as String,cardExpiry: null == cardExpiry ? _self.cardExpiry : cardExpiry // ignore: cast_nullable_to_non_nullable
as String,cashbackPercent: null == cashbackPercent ? _self.cashbackPercent : cashbackPercent // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$WalletTransactionEntity {

 String get id; String get title; String get subtitle; int get amountPiasters; String get type; String get statusLabel; String? get referenceCode; DateTime get createdAt;
/// Create a copy of WalletTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletTransactionEntityCopyWith<WalletTransactionEntity> get copyWith => _$WalletTransactionEntityCopyWithImpl<WalletTransactionEntity>(this as WalletTransactionEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WalletTransactionEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletTransactionEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.subtitle, _this.subtitle) || other.subtitle == _this.subtitle)&&(identical(other.amountPiasters, _this.amountPiasters) || other.amountPiasters == _this.amountPiasters)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.statusLabel, _this.statusLabel) || other.statusLabel == _this.statusLabel)&&(identical(other.referenceCode, _this.referenceCode) || other.referenceCode == _this.referenceCode)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as WalletTransactionEntity;
  return Object.hash(runtimeType,_this.id,_this.title,_this.subtitle,_this.amountPiasters,_this.type,_this.statusLabel,_this.referenceCode,_this.createdAt);
}

@override
String toString() {
  final _this = this as WalletTransactionEntity;
  return 'WalletTransactionEntity(id: ${_this.id}, title: ${_this.title}, subtitle: ${_this.subtitle}, amountPiasters: ${_this.amountPiasters}, type: ${_this.type}, statusLabel: ${_this.statusLabel}, referenceCode: ${_this.referenceCode}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $WalletTransactionEntityCopyWith<$Res>  {
  factory $WalletTransactionEntityCopyWith(WalletTransactionEntity value, $Res Function(WalletTransactionEntity) _then) = _$WalletTransactionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, String subtitle, int amountPiasters, String type, String statusLabel, String? referenceCode, DateTime createdAt
});




}
/// @nodoc
class _$WalletTransactionEntityCopyWithImpl<$Res>
    implements $WalletTransactionEntityCopyWith<$Res> {
  _$WalletTransactionEntityCopyWithImpl(this._self, this._then);

  final WalletTransactionEntity _self;
  final $Res Function(WalletTransactionEntity) _then;

/// Create a copy of WalletTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? subtitle = null,Object? amountPiasters = null,Object? type = null,Object? statusLabel = null,Object? referenceCode = freezed,Object? createdAt = null,}) {
  return _then(WalletTransactionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,amountPiasters: null == amountPiasters ? _self.amountPiasters : amountPiasters // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,referenceCode: freezed == referenceCode ? _self.referenceCode : referenceCode // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletTransactionEntity].
extension WalletTransactionEntityPatterns on WalletTransactionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletTransactionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletTransactionEntity value)  $default,){
final _that = this;
switch (_that) {
case _WalletTransactionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletTransactionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WalletTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String subtitle,  int amountPiasters,  String type,  String statusLabel,  String? referenceCode,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletTransactionEntity() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.amountPiasters,_that.type,_that.statusLabel,_that.referenceCode,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String subtitle,  int amountPiasters,  String type,  String statusLabel,  String? referenceCode,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _WalletTransactionEntity():
return $default(_that.id,_that.title,_that.subtitle,_that.amountPiasters,_that.type,_that.statusLabel,_that.referenceCode,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String subtitle,  int amountPiasters,  String type,  String statusLabel,  String? referenceCode,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _WalletTransactionEntity() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.amountPiasters,_that.type,_that.statusLabel,_that.referenceCode,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _WalletTransactionEntity implements WalletTransactionEntity {
  const _WalletTransactionEntity({required this.id, required this.title, required this.subtitle, required this.amountPiasters, required this.type, required this.statusLabel, this.referenceCode, required this.createdAt});
  

@override final  String id;
@override final  String title;
@override final  String subtitle;
@override final  int amountPiasters;
@override final  String type;
@override final  String statusLabel;
@override final  String? referenceCode;
@override final  DateTime createdAt;

/// Create a copy of WalletTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletTransactionEntityCopyWith<_WalletTransactionEntity> get copyWith => __$WalletTransactionEntityCopyWithImpl<_WalletTransactionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletTransactionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.amountPiasters, amountPiasters) || other.amountPiasters == amountPiasters)&&(identical(other.type, type) || other.type == type)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.referenceCode, referenceCode) || other.referenceCode == referenceCode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,title,subtitle,amountPiasters,type,statusLabel,referenceCode,createdAt);
}

@override
String toString() {
    return 'WalletTransactionEntity(id: $id, title: $title, subtitle: $subtitle, amountPiasters: $amountPiasters, type: $type, statusLabel: $statusLabel, referenceCode: $referenceCode, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$WalletTransactionEntityCopyWith<$Res> implements $WalletTransactionEntityCopyWith<$Res> {
  factory _$WalletTransactionEntityCopyWith(_WalletTransactionEntity value, $Res Function(_WalletTransactionEntity) _then) = __$WalletTransactionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String subtitle, int amountPiasters, String type, String statusLabel, String? referenceCode, DateTime createdAt
});




}
/// @nodoc
class __$WalletTransactionEntityCopyWithImpl<$Res>
    implements _$WalletTransactionEntityCopyWith<$Res> {
  __$WalletTransactionEntityCopyWithImpl(this._self, this._then);

  final _WalletTransactionEntity _self;
  final $Res Function(_WalletTransactionEntity) _then;

/// Create a copy of WalletTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? subtitle = null,Object? amountPiasters = null,Object? type = null,Object? statusLabel = null,Object? referenceCode = freezed,Object? createdAt = null,}) {
  return _then(_WalletTransactionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,amountPiasters: null == amountPiasters ? _self.amountPiasters : amountPiasters // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,statusLabel: null == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String,referenceCode: freezed == referenceCode ? _self.referenceCode : referenceCode // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$SavedCardEntity {

 String get id; String get brand; String get last4; String get expiry; String get holderName; bool get isDefault;
/// Create a copy of SavedCardEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedCardEntityCopyWith<SavedCardEntity> get copyWith => _$SavedCardEntityCopyWithImpl<SavedCardEntity>(this as SavedCardEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SavedCardEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedCardEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.brand, _this.brand) || other.brand == _this.brand)&&(identical(other.last4, _this.last4) || other.last4 == _this.last4)&&(identical(other.expiry, _this.expiry) || other.expiry == _this.expiry)&&(identical(other.holderName, _this.holderName) || other.holderName == _this.holderName)&&(identical(other.isDefault, _this.isDefault) || other.isDefault == _this.isDefault));
}


@override
int get hashCode {
  final _this = this as SavedCardEntity;
  return Object.hash(runtimeType,_this.id,_this.brand,_this.last4,_this.expiry,_this.holderName,_this.isDefault);
}

@override
String toString() {
  final _this = this as SavedCardEntity;
  return 'SavedCardEntity(id: ${_this.id}, brand: ${_this.brand}, last4: ${_this.last4}, expiry: ${_this.expiry}, holderName: ${_this.holderName}, isDefault: ${_this.isDefault})';
}


}

/// @nodoc
abstract mixin class $SavedCardEntityCopyWith<$Res>  {
  factory $SavedCardEntityCopyWith(SavedCardEntity value, $Res Function(SavedCardEntity) _then) = _$SavedCardEntityCopyWithImpl;
@useResult
$Res call({
 String id, String brand, String last4, String expiry, String holderName, bool isDefault
});




}
/// @nodoc
class _$SavedCardEntityCopyWithImpl<$Res>
    implements $SavedCardEntityCopyWith<$Res> {
  _$SavedCardEntityCopyWithImpl(this._self, this._then);

  final SavedCardEntity _self;
  final $Res Function(SavedCardEntity) _then;

/// Create a copy of SavedCardEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? brand = null,Object? last4 = null,Object? expiry = null,Object? holderName = null,Object? isDefault = null,}) {
  return _then(SavedCardEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,last4: null == last4 ? _self.last4 : last4 // ignore: cast_nullable_to_non_nullable
as String,expiry: null == expiry ? _self.expiry : expiry // ignore: cast_nullable_to_non_nullable
as String,holderName: null == holderName ? _self.holderName : holderName // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedCardEntity].
extension SavedCardEntityPatterns on SavedCardEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedCardEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedCardEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedCardEntity value)  $default,){
final _that = this;
switch (_that) {
case _SavedCardEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedCardEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SavedCardEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String brand,  String last4,  String expiry,  String holderName,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedCardEntity() when $default != null:
return $default(_that.id,_that.brand,_that.last4,_that.expiry,_that.holderName,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String brand,  String last4,  String expiry,  String holderName,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _SavedCardEntity():
return $default(_that.id,_that.brand,_that.last4,_that.expiry,_that.holderName,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String brand,  String last4,  String expiry,  String holderName,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _SavedCardEntity() when $default != null:
return $default(_that.id,_that.brand,_that.last4,_that.expiry,_that.holderName,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc


class _SavedCardEntity implements SavedCardEntity {
  const _SavedCardEntity({required this.id, required this.brand, required this.last4, required this.expiry, required this.holderName, required this.isDefault});
  

@override final  String id;
@override final  String brand;
@override final  String last4;
@override final  String expiry;
@override final  String holderName;
@override final  bool isDefault;

/// Create a copy of SavedCardEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedCardEntityCopyWith<_SavedCardEntity> get copyWith => __$SavedCardEntityCopyWithImpl<_SavedCardEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedCardEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.last4, last4) || other.last4 == last4)&&(identical(other.expiry, expiry) || other.expiry == expiry)&&(identical(other.holderName, holderName) || other.holderName == holderName)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,brand,last4,expiry,holderName,isDefault);
}

@override
String toString() {
    return 'SavedCardEntity(id: $id, brand: $brand, last4: $last4, expiry: $expiry, holderName: $holderName, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$SavedCardEntityCopyWith<$Res> implements $SavedCardEntityCopyWith<$Res> {
  factory _$SavedCardEntityCopyWith(_SavedCardEntity value, $Res Function(_SavedCardEntity) _then) = __$SavedCardEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String brand, String last4, String expiry, String holderName, bool isDefault
});




}
/// @nodoc
class __$SavedCardEntityCopyWithImpl<$Res>
    implements _$SavedCardEntityCopyWith<$Res> {
  __$SavedCardEntityCopyWithImpl(this._self, this._then);

  final _SavedCardEntity _self;
  final $Res Function(_SavedCardEntity) _then;

/// Create a copy of SavedCardEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? brand = null,Object? last4 = null,Object? expiry = null,Object? holderName = null,Object? isDefault = null,}) {
  return _then(_SavedCardEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,last4: null == last4 ? _self.last4 : last4 // ignore: cast_nullable_to_non_nullable
as String,expiry: null == expiry ? _self.expiry : expiry // ignore: cast_nullable_to_non_nullable
as String,holderName: null == holderName ? _self.holderName : holderName // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
