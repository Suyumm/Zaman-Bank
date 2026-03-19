import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart'; // freezed'in üreteceği dosya
part 'user_model.g.dart'; // json_serializable'ın üreteceği dosya

@freezed
//abstract ekledim çünkü freezed ile model oluştururken abstract class kullanmak gerekiyor
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String uid,
    required String email,
    required String name,
    @Default(3) double zamanKredisi,
    @Default(false) bool isPremium,
    @Default(0) double rating,
    @Default([]) List<String> rozetler,
    @Default('') String avatarUrl,
    required DateTime kayitTarihi,
  }) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
