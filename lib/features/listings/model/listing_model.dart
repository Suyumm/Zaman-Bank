import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_model.freezed.dart'; //@freezed bu ikisini otomatik oluşturuyor
part 'listing_model.g.dart';

// İlanı kimin açtığını belirler
enum ListingType {
  student, // Öğrenci açtı → "Öğret" sekmesinde görünür
  teacher, // Öğretmen açtı → "Öğren" sekmesinde görünür
}

@freezed
abstract class ListingModel with _$ListingModel {
  const factory ListingModel({
    required String id,
    required String baslik, // İlan başlığı
    required String aciklama, // İlan açıklaması
    required String kategori, // Örn: "Matematik", "İngilizce"
    required ListingType tip, // student veya teacher
    required String ilanSahibiUid, // İlanı açan kullanıcının UID'si
    required String ilanSahibiAdi, // İlanı açan kişinin adı
    @Default('') String ilanSahibiAvatarUrl, // Avatar
    required DateTime olusturmaTarihi,
  }) = _ListingModel;

  factory ListingModel.fromJson(Map<String, dynamic> json) =>
      _$ListingModelFromJson(json);
}
