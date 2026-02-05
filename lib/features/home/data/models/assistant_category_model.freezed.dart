// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistant_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssistantCategoryModel {

 String get slug; String get name; String get image;
/// Create a copy of AssistantCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssistantCategoryModelCopyWith<AssistantCategoryModel> get copyWith => _$AssistantCategoryModelCopyWithImpl<AssistantCategoryModel>(this as AssistantCategoryModel, _$identity);

  /// Serializes this AssistantCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantCategoryModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,name,image);

@override
String toString() {
  return 'AssistantCategoryModel(slug: $slug, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class $AssistantCategoryModelCopyWith<$Res>  {
  factory $AssistantCategoryModelCopyWith(AssistantCategoryModel value, $Res Function(AssistantCategoryModel) _then) = _$AssistantCategoryModelCopyWithImpl;
@useResult
$Res call({
 String slug, String name, String image
});




}
/// @nodoc
class _$AssistantCategoryModelCopyWithImpl<$Res>
    implements $AssistantCategoryModelCopyWith<$Res> {
  _$AssistantCategoryModelCopyWithImpl(this._self, this._then);

  final AssistantCategoryModel _self;
  final $Res Function(AssistantCategoryModel) _then;

/// Create a copy of AssistantCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = null,Object? name = null,Object? image = null,}) {
  return _then(_self.copyWith(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AssistantCategoryModel].
extension AssistantCategoryModelPatterns on AssistantCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssistantCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssistantCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssistantCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _AssistantCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssistantCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _AssistantCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String slug,  String name,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssistantCategoryModel() when $default != null:
return $default(_that.slug,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String slug,  String name,  String image)  $default,) {final _that = this;
switch (_that) {
case _AssistantCategoryModel():
return $default(_that.slug,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String slug,  String name,  String image)?  $default,) {final _that = this;
switch (_that) {
case _AssistantCategoryModel() when $default != null:
return $default(_that.slug,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssistantCategoryModel implements AssistantCategoryModel {
  const _AssistantCategoryModel({required this.slug, required this.name, this.image = 'https://dummyjson.com/icon/adrianf/128'});
  factory _AssistantCategoryModel.fromJson(Map<String, dynamic> json) => _$AssistantCategoryModelFromJson(json);

@override final  String slug;
@override final  String name;
@override@JsonKey() final  String image;

/// Create a copy of AssistantCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssistantCategoryModelCopyWith<_AssistantCategoryModel> get copyWith => __$AssistantCategoryModelCopyWithImpl<_AssistantCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssistantCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssistantCategoryModel&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,name,image);

@override
String toString() {
  return 'AssistantCategoryModel(slug: $slug, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$AssistantCategoryModelCopyWith<$Res> implements $AssistantCategoryModelCopyWith<$Res> {
  factory _$AssistantCategoryModelCopyWith(_AssistantCategoryModel value, $Res Function(_AssistantCategoryModel) _then) = __$AssistantCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String slug, String name, String image
});




}
/// @nodoc
class __$AssistantCategoryModelCopyWithImpl<$Res>
    implements _$AssistantCategoryModelCopyWith<$Res> {
  __$AssistantCategoryModelCopyWithImpl(this._self, this._then);

  final _AssistantCategoryModel _self;
  final $Res Function(_AssistantCategoryModel) _then;

/// Create a copy of AssistantCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = null,Object? name = null,Object? image = null,}) {
  return _then(_AssistantCategoryModel(
slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
