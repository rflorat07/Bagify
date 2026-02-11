// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Promo {

 String get title; String get description; String get image;
/// Create a copy of Promo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoCopyWith<Promo> get copyWith => _$PromoCopyWithImpl<Promo>(this as Promo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Promo&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,image);

@override
String toString() {
  return 'Promo(title: $title, description: $description, image: $image)';
}


}

/// @nodoc
abstract mixin class $PromoCopyWith<$Res>  {
  factory $PromoCopyWith(Promo value, $Res Function(Promo) _then) = _$PromoCopyWithImpl;
@useResult
$Res call({
 String title, String description, String image
});




}
/// @nodoc
class _$PromoCopyWithImpl<$Res>
    implements $PromoCopyWith<$Res> {
  _$PromoCopyWithImpl(this._self, this._then);

  final Promo _self;
  final $Res Function(Promo) _then;

/// Create a copy of Promo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? image = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Promo].
extension PromoPatterns on Promo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Promo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Promo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Promo value)  $default,){
final _that = this;
switch (_that) {
case _Promo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Promo value)?  $default,){
final _that = this;
switch (_that) {
case _Promo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Promo() when $default != null:
return $default(_that.title,_that.description,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description,  String image)  $default,) {final _that = this;
switch (_that) {
case _Promo():
return $default(_that.title,_that.description,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description,  String image)?  $default,) {final _that = this;
switch (_that) {
case _Promo() when $default != null:
return $default(_that.title,_that.description,_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _Promo implements Promo {
  const _Promo({required this.title, required this.description, required this.image});
  

@override final  String title;
@override final  String description;
@override final  String image;

/// Create a copy of Promo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoCopyWith<_Promo> get copyWith => __$PromoCopyWithImpl<_Promo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Promo&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,image);

@override
String toString() {
  return 'Promo(title: $title, description: $description, image: $image)';
}


}

/// @nodoc
abstract mixin class _$PromoCopyWith<$Res> implements $PromoCopyWith<$Res> {
  factory _$PromoCopyWith(_Promo value, $Res Function(_Promo) _then) = __$PromoCopyWithImpl;
@override @useResult
$Res call({
 String title, String description, String image
});




}
/// @nodoc
class __$PromoCopyWithImpl<$Res>
    implements _$PromoCopyWith<$Res> {
  __$PromoCopyWithImpl(this._self, this._then);

  final _Promo _self;
  final $Res Function(_Promo) _then;

/// Create a copy of Promo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? image = null,}) {
  return _then(_Promo(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
