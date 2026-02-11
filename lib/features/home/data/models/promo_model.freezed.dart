// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromoModel {

 String get title; String get description; String get thumbnail;
/// Create a copy of PromoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoModelCopyWith<PromoModel> get copyWith => _$PromoModelCopyWithImpl<PromoModel>(this as PromoModel, _$identity);

  /// Serializes this PromoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,thumbnail);

@override
String toString() {
  return 'PromoModel(title: $title, description: $description, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $PromoModelCopyWith<$Res>  {
  factory $PromoModelCopyWith(PromoModel value, $Res Function(PromoModel) _then) = _$PromoModelCopyWithImpl;
@useResult
$Res call({
 String title, String description, String thumbnail
});




}
/// @nodoc
class _$PromoModelCopyWithImpl<$Res>
    implements $PromoModelCopyWith<$Res> {
  _$PromoModelCopyWithImpl(this._self, this._then);

  final PromoModel _self;
  final $Res Function(PromoModel) _then;

/// Create a copy of PromoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? thumbnail = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoModel].
extension PromoModelPatterns on PromoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoModel value)  $default,){
final _that = this;
switch (_that) {
case _PromoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  String thumbnail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoModel() when $default != null:
return $default(_that.title,_that.description,_that.thumbnail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  String thumbnail)  $default,) {final _that = this;
switch (_that) {
case _PromoModel():
return $default(_that.title,_that.description,_that.thumbnail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  String thumbnail)?  $default,) {final _that = this;
switch (_that) {
case _PromoModel() when $default != null:
return $default(_that.title,_that.description,_that.thumbnail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromoModel implements PromoModel {
  const _PromoModel({required this.title, required this.description, required this.thumbnail});
  factory _PromoModel.fromJson(Map<String, dynamic> json) => _$PromoModelFromJson(json);

@override final  String title;
@override final  String description;
@override final  String thumbnail;

/// Create a copy of PromoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoModelCopyWith<_PromoModel> get copyWith => __$PromoModelCopyWithImpl<_PromoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoModel&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,thumbnail);

@override
String toString() {
  return 'PromoModel(title: $title, description: $description, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$PromoModelCopyWith<$Res> implements $PromoModelCopyWith<$Res> {
  factory _$PromoModelCopyWith(_PromoModel value, $Res Function(_PromoModel) _then) = __$PromoModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, String thumbnail
});




}
/// @nodoc
class __$PromoModelCopyWithImpl<$Res>
    implements _$PromoModelCopyWith<$Res> {
  __$PromoModelCopyWithImpl(this._self, this._then);

  final _PromoModel _self;
  final $Res Function(_PromoModel) _then;

/// Create a copy of PromoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? thumbnail = null,}) {
  return _then(_PromoModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
