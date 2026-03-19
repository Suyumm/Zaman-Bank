// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListingModel {

 String get id; String get baslik;// İlan başlığı
 String get aciklama;// İlan açıklaması
 String get kategori;// Örn: "Matematik", "İngilizce"
 ListingType get tip;// student veya teacher
 String get ilanSahibiUid;// İlanı açan kullanıcının UID'si
 String get ilanSahibiAdi;// İlanı açan kişinin adı
 String get ilanSahibiAvatarUrl;// Avatar
 DateTime get olusturmaTarihi;
/// Create a copy of ListingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingModelCopyWith<ListingModel> get copyWith => _$ListingModelCopyWithImpl<ListingModel>(this as ListingModel, _$identity);

  /// Serializes this ListingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.baslik, baslik) || other.baslik == baslik)&&(identical(other.aciklama, aciklama) || other.aciklama == aciklama)&&(identical(other.kategori, kategori) || other.kategori == kategori)&&(identical(other.tip, tip) || other.tip == tip)&&(identical(other.ilanSahibiUid, ilanSahibiUid) || other.ilanSahibiUid == ilanSahibiUid)&&(identical(other.ilanSahibiAdi, ilanSahibiAdi) || other.ilanSahibiAdi == ilanSahibiAdi)&&(identical(other.ilanSahibiAvatarUrl, ilanSahibiAvatarUrl) || other.ilanSahibiAvatarUrl == ilanSahibiAvatarUrl)&&(identical(other.olusturmaTarihi, olusturmaTarihi) || other.olusturmaTarihi == olusturmaTarihi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,baslik,aciklama,kategori,tip,ilanSahibiUid,ilanSahibiAdi,ilanSahibiAvatarUrl,olusturmaTarihi);

@override
String toString() {
  return 'ListingModel(id: $id, baslik: $baslik, aciklama: $aciklama, kategori: $kategori, tip: $tip, ilanSahibiUid: $ilanSahibiUid, ilanSahibiAdi: $ilanSahibiAdi, ilanSahibiAvatarUrl: $ilanSahibiAvatarUrl, olusturmaTarihi: $olusturmaTarihi)';
}


}

/// @nodoc
abstract mixin class $ListingModelCopyWith<$Res>  {
  factory $ListingModelCopyWith(ListingModel value, $Res Function(ListingModel) _then) = _$ListingModelCopyWithImpl;
@useResult
$Res call({
 String id, String baslik, String aciklama, String kategori, ListingType tip, String ilanSahibiUid, String ilanSahibiAdi, String ilanSahibiAvatarUrl, DateTime olusturmaTarihi
});




}
/// @nodoc
class _$ListingModelCopyWithImpl<$Res>
    implements $ListingModelCopyWith<$Res> {
  _$ListingModelCopyWithImpl(this._self, this._then);

  final ListingModel _self;
  final $Res Function(ListingModel) _then;

/// Create a copy of ListingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? baslik = null,Object? aciklama = null,Object? kategori = null,Object? tip = null,Object? ilanSahibiUid = null,Object? ilanSahibiAdi = null,Object? ilanSahibiAvatarUrl = null,Object? olusturmaTarihi = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,baslik: null == baslik ? _self.baslik : baslik // ignore: cast_nullable_to_non_nullable
as String,aciklama: null == aciklama ? _self.aciklama : aciklama // ignore: cast_nullable_to_non_nullable
as String,kategori: null == kategori ? _self.kategori : kategori // ignore: cast_nullable_to_non_nullable
as String,tip: null == tip ? _self.tip : tip // ignore: cast_nullable_to_non_nullable
as ListingType,ilanSahibiUid: null == ilanSahibiUid ? _self.ilanSahibiUid : ilanSahibiUid // ignore: cast_nullable_to_non_nullable
as String,ilanSahibiAdi: null == ilanSahibiAdi ? _self.ilanSahibiAdi : ilanSahibiAdi // ignore: cast_nullable_to_non_nullable
as String,ilanSahibiAvatarUrl: null == ilanSahibiAvatarUrl ? _self.ilanSahibiAvatarUrl : ilanSahibiAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,olusturmaTarihi: null == olusturmaTarihi ? _self.olusturmaTarihi : olusturmaTarihi // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingModel].
extension ListingModelPatterns on ListingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingModel value)  $default,){
final _that = this;
switch (_that) {
case _ListingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingModel value)?  $default,){
final _that = this;
switch (_that) {
case _ListingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String baslik,  String aciklama,  String kategori,  ListingType tip,  String ilanSahibiUid,  String ilanSahibiAdi,  String ilanSahibiAvatarUrl,  DateTime olusturmaTarihi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingModel() when $default != null:
return $default(_that.id,_that.baslik,_that.aciklama,_that.kategori,_that.tip,_that.ilanSahibiUid,_that.ilanSahibiAdi,_that.ilanSahibiAvatarUrl,_that.olusturmaTarihi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String baslik,  String aciklama,  String kategori,  ListingType tip,  String ilanSahibiUid,  String ilanSahibiAdi,  String ilanSahibiAvatarUrl,  DateTime olusturmaTarihi)  $default,) {final _that = this;
switch (_that) {
case _ListingModel():
return $default(_that.id,_that.baslik,_that.aciklama,_that.kategori,_that.tip,_that.ilanSahibiUid,_that.ilanSahibiAdi,_that.ilanSahibiAvatarUrl,_that.olusturmaTarihi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String baslik,  String aciklama,  String kategori,  ListingType tip,  String ilanSahibiUid,  String ilanSahibiAdi,  String ilanSahibiAvatarUrl,  DateTime olusturmaTarihi)?  $default,) {final _that = this;
switch (_that) {
case _ListingModel() when $default != null:
return $default(_that.id,_that.baslik,_that.aciklama,_that.kategori,_that.tip,_that.ilanSahibiUid,_that.ilanSahibiAdi,_that.ilanSahibiAvatarUrl,_that.olusturmaTarihi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingModel implements ListingModel {
  const _ListingModel({required this.id, required this.baslik, required this.aciklama, required this.kategori, required this.tip, required this.ilanSahibiUid, required this.ilanSahibiAdi, this.ilanSahibiAvatarUrl = '', required this.olusturmaTarihi});
  factory _ListingModel.fromJson(Map<String, dynamic> json) => _$ListingModelFromJson(json);

@override final  String id;
@override final  String baslik;
// İlan başlığı
@override final  String aciklama;
// İlan açıklaması
@override final  String kategori;
// Örn: "Matematik", "İngilizce"
@override final  ListingType tip;
// student veya teacher
@override final  String ilanSahibiUid;
// İlanı açan kullanıcının UID'si
@override final  String ilanSahibiAdi;
// İlanı açan kişinin adı
@override@JsonKey() final  String ilanSahibiAvatarUrl;
// Avatar
@override final  DateTime olusturmaTarihi;

/// Create a copy of ListingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingModelCopyWith<_ListingModel> get copyWith => __$ListingModelCopyWithImpl<_ListingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.baslik, baslik) || other.baslik == baslik)&&(identical(other.aciklama, aciklama) || other.aciklama == aciklama)&&(identical(other.kategori, kategori) || other.kategori == kategori)&&(identical(other.tip, tip) || other.tip == tip)&&(identical(other.ilanSahibiUid, ilanSahibiUid) || other.ilanSahibiUid == ilanSahibiUid)&&(identical(other.ilanSahibiAdi, ilanSahibiAdi) || other.ilanSahibiAdi == ilanSahibiAdi)&&(identical(other.ilanSahibiAvatarUrl, ilanSahibiAvatarUrl) || other.ilanSahibiAvatarUrl == ilanSahibiAvatarUrl)&&(identical(other.olusturmaTarihi, olusturmaTarihi) || other.olusturmaTarihi == olusturmaTarihi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,baslik,aciklama,kategori,tip,ilanSahibiUid,ilanSahibiAdi,ilanSahibiAvatarUrl,olusturmaTarihi);

@override
String toString() {
  return 'ListingModel(id: $id, baslik: $baslik, aciklama: $aciklama, kategori: $kategori, tip: $tip, ilanSahibiUid: $ilanSahibiUid, ilanSahibiAdi: $ilanSahibiAdi, ilanSahibiAvatarUrl: $ilanSahibiAvatarUrl, olusturmaTarihi: $olusturmaTarihi)';
}


}

/// @nodoc
abstract mixin class _$ListingModelCopyWith<$Res> implements $ListingModelCopyWith<$Res> {
  factory _$ListingModelCopyWith(_ListingModel value, $Res Function(_ListingModel) _then) = __$ListingModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String baslik, String aciklama, String kategori, ListingType tip, String ilanSahibiUid, String ilanSahibiAdi, String ilanSahibiAvatarUrl, DateTime olusturmaTarihi
});




}
/// @nodoc
class __$ListingModelCopyWithImpl<$Res>
    implements _$ListingModelCopyWith<$Res> {
  __$ListingModelCopyWithImpl(this._self, this._then);

  final _ListingModel _self;
  final $Res Function(_ListingModel) _then;

/// Create a copy of ListingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? baslik = null,Object? aciklama = null,Object? kategori = null,Object? tip = null,Object? ilanSahibiUid = null,Object? ilanSahibiAdi = null,Object? ilanSahibiAvatarUrl = null,Object? olusturmaTarihi = null,}) {
  return _then(_ListingModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,baslik: null == baslik ? _self.baslik : baslik // ignore: cast_nullable_to_non_nullable
as String,aciklama: null == aciklama ? _self.aciklama : aciklama // ignore: cast_nullable_to_non_nullable
as String,kategori: null == kategori ? _self.kategori : kategori // ignore: cast_nullable_to_non_nullable
as String,tip: null == tip ? _self.tip : tip // ignore: cast_nullable_to_non_nullable
as ListingType,ilanSahibiUid: null == ilanSahibiUid ? _self.ilanSahibiUid : ilanSahibiUid // ignore: cast_nullable_to_non_nullable
as String,ilanSahibiAdi: null == ilanSahibiAdi ? _self.ilanSahibiAdi : ilanSahibiAdi // ignore: cast_nullable_to_non_nullable
as String,ilanSahibiAvatarUrl: null == ilanSahibiAvatarUrl ? _self.ilanSahibiAvatarUrl : ilanSahibiAvatarUrl // ignore: cast_nullable_to_non_nullable
as String,olusturmaTarihi: null == olusturmaTarihi ? _self.olusturmaTarihi : olusturmaTarihi // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
