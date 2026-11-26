// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProfileEntity {

 String get id; String get fullName; String get phone; String get tierLabel; String get avatarAsset; bool get hasMorningPass; int get rewardsCount; String get referralCode;
/// Create a copy of UserProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileEntityCopyWith<UserProfileEntity> get copyWith => _$UserProfileEntityCopyWithImpl<UserProfileEntity>(this as UserProfileEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UserProfileEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.fullName, _this.fullName) || other.fullName == _this.fullName)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.tierLabel, _this.tierLabel) || other.tierLabel == _this.tierLabel)&&(identical(other.avatarAsset, _this.avatarAsset) || other.avatarAsset == _this.avatarAsset)&&(identical(other.hasMorningPass, _this.hasMorningPass) || other.hasMorningPass == _this.hasMorningPass)&&(identical(other.rewardsCount, _this.rewardsCount) || other.rewardsCount == _this.rewardsCount)&&(identical(other.referralCode, _this.referralCode) || other.referralCode == _this.referralCode));
}


@override
int get hashCode {
  final _this = this as UserProfileEntity;
  return Object.hash(runtimeType,_this.id,_this.fullName,_this.phone,_this.tierLabel,_this.avatarAsset,_this.hasMorningPass,_this.rewardsCount,_this.referralCode);
}

@override
String toString() {
  final _this = this as UserProfileEntity;
  return 'UserProfileEntity(id: ${_this.id}, fullName: ${_this.fullName}, phone: ${_this.phone}, tierLabel: ${_this.tierLabel}, avatarAsset: ${_this.avatarAsset}, hasMorningPass: ${_this.hasMorningPass}, rewardsCount: ${_this.rewardsCount}, referralCode: ${_this.referralCode})';
}


}

/// @nodoc
abstract mixin class $UserProfileEntityCopyWith<$Res>  {
  factory $UserProfileEntityCopyWith(UserProfileEntity value, $Res Function(UserProfileEntity) _then) = _$UserProfileEntityCopyWithImpl;
@useResult
$Res call({
 String id, String fullName, String phone, String tierLabel, String avatarAsset, bool hasMorningPass, int rewardsCount, String referralCode
});




}
/// @nodoc
class _$UserProfileEntityCopyWithImpl<$Res>
    implements $UserProfileEntityCopyWith<$Res> {
  _$UserProfileEntityCopyWithImpl(this._self, this._then);

  final UserProfileEntity _self;
  final $Res Function(UserProfileEntity) _then;

/// Create a copy of UserProfileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fullName = null,Object? phone = null,Object? tierLabel = null,Object? avatarAsset = null,Object? hasMorningPass = null,Object? rewardsCount = null,Object? referralCode = null,}) {
  return _then(UserProfileEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,tierLabel: null == tierLabel ? _self.tierLabel : tierLabel // ignore: cast_nullable_to_non_nullable
as String,avatarAsset: null == avatarAsset ? _self.avatarAsset : avatarAsset // ignore: cast_nullable_to_non_nullable
as String,hasMorningPass: null == hasMorningPass ? _self.hasMorningPass : hasMorningPass // ignore: cast_nullable_to_non_nullable
as bool,rewardsCount: null == rewardsCount ? _self.rewardsCount : rewardsCount // ignore: cast_nullable_to_non_nullable
as int,referralCode: null == referralCode ? _self.referralCode : referralCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfileEntity].
extension UserProfileEntityPatterns on UserProfileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserProfileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fullName,  String phone,  String tierLabel,  String avatarAsset,  bool hasMorningPass,  int rewardsCount,  String referralCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileEntity() when $default != null:
return $default(_that.id,_that.fullName,_that.phone,_that.tierLabel,_that.avatarAsset,_that.hasMorningPass,_that.rewardsCount,_that.referralCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fullName,  String phone,  String tierLabel,  String avatarAsset,  bool hasMorningPass,  int rewardsCount,  String referralCode)  $default,) {final _that = this;
switch (_that) {
case _UserProfileEntity():
return $default(_that.id,_that.fullName,_that.phone,_that.tierLabel,_that.avatarAsset,_that.hasMorningPass,_that.rewardsCount,_that.referralCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fullName,  String phone,  String tierLabel,  String avatarAsset,  bool hasMorningPass,  int rewardsCount,  String referralCode)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileEntity() when $default != null:
return $default(_that.id,_that.fullName,_that.phone,_that.tierLabel,_that.avatarAsset,_that.hasMorningPass,_that.rewardsCount,_that.referralCode);case _:
  return null;

}
}

}

/// @nodoc


class _UserProfileEntity implements UserProfileEntity {
  const _UserProfileEntity({required this.id, required this.fullName, required this.phone, required this.tierLabel, required this.avatarAsset, required this.hasMorningPass, required this.rewardsCount, required this.referralCode});
  

@override final  String id;
@override final  String fullName;
@override final  String phone;
@override final  String tierLabel;
@override final  String avatarAsset;
@override final  bool hasMorningPass;
@override final  int rewardsCount;
@override final  String referralCode;

/// Create a copy of UserProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileEntityCopyWith<_UserProfileEntity> get copyWith => __$UserProfileEntityCopyWithImpl<_UserProfileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.tierLabel, tierLabel) || other.tierLabel == tierLabel)&&(identical(other.avatarAsset, avatarAsset) || other.avatarAsset == avatarAsset)&&(identical(other.hasMorningPass, hasMorningPass) || other.hasMorningPass == hasMorningPass)&&(identical(other.rewardsCount, rewardsCount) || other.rewardsCount == rewardsCount)&&(identical(other.referralCode, referralCode) || other.referralCode == referralCode));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,fullName,phone,tierLabel,avatarAsset,hasMorningPass,rewardsCount,referralCode);
}

@override
String toString() {
    return 'UserProfileEntity(id: $id, fullName: $fullName, phone: $phone, tierLabel: $tierLabel, avatarAsset: $avatarAsset, hasMorningPass: $hasMorningPass, rewardsCount: $rewardsCount, referralCode: $referralCode)';
}


}

/// @nodoc
abstract mixin class _$UserProfileEntityCopyWith<$Res> implements $UserProfileEntityCopyWith<$Res> {
  factory _$UserProfileEntityCopyWith(_UserProfileEntity value, $Res Function(_UserProfileEntity) _then) = __$UserProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String fullName, String phone, String tierLabel, String avatarAsset, bool hasMorningPass, int rewardsCount, String referralCode
});




}
/// @nodoc
class __$UserProfileEntityCopyWithImpl<$Res>
    implements _$UserProfileEntityCopyWith<$Res> {
  __$UserProfileEntityCopyWithImpl(this._self, this._then);

  final _UserProfileEntity _self;
  final $Res Function(_UserProfileEntity) _then;

/// Create a copy of UserProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fullName = null,Object? phone = null,Object? tierLabel = null,Object? avatarAsset = null,Object? hasMorningPass = null,Object? rewardsCount = null,Object? referralCode = null,}) {
  return _then(_UserProfileEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,tierLabel: null == tierLabel ? _self.tierLabel : tierLabel // ignore: cast_nullable_to_non_nullable
as String,avatarAsset: null == avatarAsset ? _self.avatarAsset : avatarAsset // ignore: cast_nullable_to_non_nullable
as String,hasMorningPass: null == hasMorningPass ? _self.hasMorningPass : hasMorningPass // ignore: cast_nullable_to_non_nullable
as bool,rewardsCount: null == rewardsCount ? _self.rewardsCount : rewardsCount // ignore: cast_nullable_to_non_nullable
as int,referralCode: null == referralCode ? _self.referralCode : referralCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AddressEntity {

 String get id; String get label; String get street; String get area; String get city; String get etaText; bool get isDefault;
/// Create a copy of AddressEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressEntityCopyWith<AddressEntity> get copyWith => _$AddressEntityCopyWithImpl<AddressEntity>(this as AddressEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AddressEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.street, _this.street) || other.street == _this.street)&&(identical(other.area, _this.area) || other.area == _this.area)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.etaText, _this.etaText) || other.etaText == _this.etaText)&&(identical(other.isDefault, _this.isDefault) || other.isDefault == _this.isDefault));
}


@override
int get hashCode {
  final _this = this as AddressEntity;
  return Object.hash(runtimeType,_this.id,_this.label,_this.street,_this.area,_this.city,_this.etaText,_this.isDefault);
}

@override
String toString() {
  final _this = this as AddressEntity;
  return 'AddressEntity(id: ${_this.id}, label: ${_this.label}, street: ${_this.street}, area: ${_this.area}, city: ${_this.city}, etaText: ${_this.etaText}, isDefault: ${_this.isDefault})';
}


}

/// @nodoc
abstract mixin class $AddressEntityCopyWith<$Res>  {
  factory $AddressEntityCopyWith(AddressEntity value, $Res Function(AddressEntity) _then) = _$AddressEntityCopyWithImpl;
@useResult
$Res call({
 String id, String label, String street, String area, String city, String etaText, bool isDefault
});




}
/// @nodoc
class _$AddressEntityCopyWithImpl<$Res>
    implements $AddressEntityCopyWith<$Res> {
  _$AddressEntityCopyWithImpl(this._self, this._then);

  final AddressEntity _self;
  final $Res Function(AddressEntity) _then;

/// Create a copy of AddressEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? street = null,Object? area = null,Object? city = null,Object? etaText = null,Object? isDefault = null,}) {
  return _then(AddressEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,etaText: null == etaText ? _self.etaText : etaText // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AddressEntity].
extension AddressEntityPatterns on AddressEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressEntity value)  $default,){
final _that = this;
switch (_that) {
case _AddressEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AddressEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  String street,  String area,  String city,  String etaText,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressEntity() when $default != null:
return $default(_that.id,_that.label,_that.street,_that.area,_that.city,_that.etaText,_that.isDefault);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  String street,  String area,  String city,  String etaText,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _AddressEntity():
return $default(_that.id,_that.label,_that.street,_that.area,_that.city,_that.etaText,_that.isDefault);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  String street,  String area,  String city,  String etaText,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _AddressEntity() when $default != null:
return $default(_that.id,_that.label,_that.street,_that.area,_that.city,_that.etaText,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc


class _AddressEntity extends AddressEntity {
  const _AddressEntity({required this.id, required this.label, required this.street, required this.area, required this.city, required this.etaText, required this.isDefault}): super._();
  

@override final  String id;
@override final  String label;
@override final  String street;
@override final  String area;
@override final  String city;
@override final  String etaText;
@override final  bool isDefault;

/// Create a copy of AddressEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressEntityCopyWith<_AddressEntity> get copyWith => __$AddressEntityCopyWithImpl<_AddressEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.street, street) || other.street == street)&&(identical(other.area, area) || other.area == area)&&(identical(other.city, city) || other.city == city)&&(identical(other.etaText, etaText) || other.etaText == etaText)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,label,street,area,city,etaText,isDefault);
}

@override
String toString() {
    return 'AddressEntity(id: $id, label: $label, street: $street, area: $area, city: $city, etaText: $etaText, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$AddressEntityCopyWith<$Res> implements $AddressEntityCopyWith<$Res> {
  factory _$AddressEntityCopyWith(_AddressEntity value, $Res Function(_AddressEntity) _then) = __$AddressEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, String street, String area, String city, String etaText, bool isDefault
});




}
/// @nodoc
class __$AddressEntityCopyWithImpl<$Res>
    implements _$AddressEntityCopyWith<$Res> {
  __$AddressEntityCopyWithImpl(this._self, this._then);

  final _AddressEntity _self;
  final $Res Function(_AddressEntity) _then;

/// Create a copy of AddressEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? street = null,Object? area = null,Object? city = null,Object? etaText = null,Object? isDefault = null,}) {
  return _then(_AddressEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,etaText: null == etaText ? _self.etaText : etaText // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$UserSettingsEntity {

 bool get coldPackagingAlert; bool get dietaryLactoseFree;
/// Create a copy of UserSettingsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSettingsEntityCopyWith<UserSettingsEntity> get copyWith => _$UserSettingsEntityCopyWithImpl<UserSettingsEntity>(this as UserSettingsEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UserSettingsEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSettingsEntity&&(identical(other.coldPackagingAlert, _this.coldPackagingAlert) || other.coldPackagingAlert == _this.coldPackagingAlert)&&(identical(other.dietaryLactoseFree, _this.dietaryLactoseFree) || other.dietaryLactoseFree == _this.dietaryLactoseFree));
}


@override
int get hashCode {
  final _this = this as UserSettingsEntity;
  return Object.hash(runtimeType,_this.coldPackagingAlert,_this.dietaryLactoseFree);
}

@override
String toString() {
  final _this = this as UserSettingsEntity;
  return 'UserSettingsEntity(coldPackagingAlert: ${_this.coldPackagingAlert}, dietaryLactoseFree: ${_this.dietaryLactoseFree})';
}


}

/// @nodoc
abstract mixin class $UserSettingsEntityCopyWith<$Res>  {
  factory $UserSettingsEntityCopyWith(UserSettingsEntity value, $Res Function(UserSettingsEntity) _then) = _$UserSettingsEntityCopyWithImpl;
@useResult
$Res call({
 bool coldPackagingAlert, bool dietaryLactoseFree
});




}
/// @nodoc
class _$UserSettingsEntityCopyWithImpl<$Res>
    implements $UserSettingsEntityCopyWith<$Res> {
  _$UserSettingsEntityCopyWithImpl(this._self, this._then);

  final UserSettingsEntity _self;
  final $Res Function(UserSettingsEntity) _then;

/// Create a copy of UserSettingsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? coldPackagingAlert = null,Object? dietaryLactoseFree = null,}) {
  return _then(UserSettingsEntity(
coldPackagingAlert: null == coldPackagingAlert ? _self.coldPackagingAlert : coldPackagingAlert // ignore: cast_nullable_to_non_nullable
as bool,dietaryLactoseFree: null == dietaryLactoseFree ? _self.dietaryLactoseFree : dietaryLactoseFree // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSettingsEntity].
extension UserSettingsEntityPatterns on UserSettingsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSettingsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSettingsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSettingsEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserSettingsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSettingsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserSettingsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool coldPackagingAlert,  bool dietaryLactoseFree)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSettingsEntity() when $default != null:
return $default(_that.coldPackagingAlert,_that.dietaryLactoseFree);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool coldPackagingAlert,  bool dietaryLactoseFree)  $default,) {final _that = this;
switch (_that) {
case _UserSettingsEntity():
return $default(_that.coldPackagingAlert,_that.dietaryLactoseFree);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool coldPackagingAlert,  bool dietaryLactoseFree)?  $default,) {final _that = this;
switch (_that) {
case _UserSettingsEntity() when $default != null:
return $default(_that.coldPackagingAlert,_that.dietaryLactoseFree);case _:
  return null;

}
}

}

/// @nodoc


class _UserSettingsEntity implements UserSettingsEntity {
  const _UserSettingsEntity({required this.coldPackagingAlert, required this.dietaryLactoseFree});
  

@override final  bool coldPackagingAlert;
@override final  bool dietaryLactoseFree;

/// Create a copy of UserSettingsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSettingsEntityCopyWith<_UserSettingsEntity> get copyWith => __$UserSettingsEntityCopyWithImpl<_UserSettingsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSettingsEntity&&(identical(other.coldPackagingAlert, coldPackagingAlert) || other.coldPackagingAlert == coldPackagingAlert)&&(identical(other.dietaryLactoseFree, dietaryLactoseFree) || other.dietaryLactoseFree == dietaryLactoseFree));
}


@override
int get hashCode {
    return Object.hash(runtimeType,coldPackagingAlert,dietaryLactoseFree);
}

@override
String toString() {
    return 'UserSettingsEntity(coldPackagingAlert: $coldPackagingAlert, dietaryLactoseFree: $dietaryLactoseFree)';
}


}

/// @nodoc
abstract mixin class _$UserSettingsEntityCopyWith<$Res> implements $UserSettingsEntityCopyWith<$Res> {
  factory _$UserSettingsEntityCopyWith(_UserSettingsEntity value, $Res Function(_UserSettingsEntity) _then) = __$UserSettingsEntityCopyWithImpl;
@override @useResult
$Res call({
 bool coldPackagingAlert, bool dietaryLactoseFree
});




}
/// @nodoc
class __$UserSettingsEntityCopyWithImpl<$Res>
    implements _$UserSettingsEntityCopyWith<$Res> {
  __$UserSettingsEntityCopyWithImpl(this._self, this._then);

  final _UserSettingsEntity _self;
  final $Res Function(_UserSettingsEntity) _then;

/// Create a copy of UserSettingsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? coldPackagingAlert = null,Object? dietaryLactoseFree = null,}) {
  return _then(_UserSettingsEntity(
coldPackagingAlert: null == coldPackagingAlert ? _self.coldPackagingAlert : coldPackagingAlert // ignore: cast_nullable_to_non_nullable
as bool,dietaryLactoseFree: null == dietaryLactoseFree ? _self.dietaryLactoseFree : dietaryLactoseFree // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
