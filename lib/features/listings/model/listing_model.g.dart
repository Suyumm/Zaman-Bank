// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListingModel _$ListingModelFromJson(Map<String, dynamic> json) =>
    _ListingModel(
      id: json['id'] as String,
      baslik: json['baslik'] as String,
      aciklama: json['aciklama'] as String,
      kategori: json['kategori'] as String,
      tip: $enumDecode(_$ListingTypeEnumMap, json['tip']),
      ilanSahibiUid: json['ilanSahibiUid'] as String,
      ilanSahibiAdi: json['ilanSahibiAdi'] as String,
      ilanSahibiAvatarUrl: json['ilanSahibiAvatarUrl'] as String? ?? '',
      olusturmaTarihi: DateTime.parse(json['olusturmaTarihi'] as String),
    );

Map<String, dynamic> _$ListingModelToJson(_ListingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'baslik': instance.baslik,
      'aciklama': instance.aciklama,
      'kategori': instance.kategori,
      'tip': _$ListingTypeEnumMap[instance.tip]!,
      'ilanSahibiUid': instance.ilanSahibiUid,
      'ilanSahibiAdi': instance.ilanSahibiAdi,
      'ilanSahibiAvatarUrl': instance.ilanSahibiAvatarUrl,
      'olusturmaTarihi': instance.olusturmaTarihi.toIso8601String(),
    };

const _$ListingTypeEnumMap = {
  ListingType.student: 'student',
  ListingType.teacher: 'teacher',
};
