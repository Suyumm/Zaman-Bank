// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  uid: json['uid'] as String,
  email: json['email'] as String,
  name: json['name'] as String,
  zamanKredisi: (json['zamanKredisi'] as num?)?.toDouble() ?? 3,
  isPremium: json['isPremium'] as bool? ?? false,
  rating: (json['rating'] as num?)?.toDouble() ?? 0,
  rozetler:
      (json['rozetler'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  kayitTarihi: DateTime.parse(json['kayitTarihi'] as String),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'zamanKredisi': instance.zamanKredisi,
      'isPremium': instance.isPremium,
      'rating': instance.rating,
      'rozetler': instance.rozetler,
      'kayitTarihi': instance.kayitTarihi.toIso8601String(),
    };


/*  
    // ileride kullanım şekli //

// Firebase'den okurken:
final data = doc.data() as Map<String, dynamic>;
final user = UserModel.fromJson(data);

// Firebase'e yazarken:
await firestore.collection('users').doc(user.uid).set(user.toJson());

// Bir alanı değiştirmek istediğinde (immutable olduğu için copyWith):
final updatedUser = user.copyWith(zamanKredisi: 5);

*/