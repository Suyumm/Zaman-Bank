import 'package:zaman_bankasi/features/listings/model/listing_model.dart';
import 'package:zaman_bankasi/features/listings/repository/listing_repository.dart';

/// Deneme amaçlı Mock (sahte) veri sağlayan repository.
/// Gerçek Firestore bağlantısı hazır olunca bu dosya silinip
/// FirestoreListingRepository ile değiştirilecek.
class MockListingRepository implements ListingRepository {
  @override
  Future<List<ListingModel>> ilanlariGetir() async {
    // Gerçek API çağrısını simüle etmek için kısa bir gecikme
    await Future.delayed(const Duration(milliseconds: 500));

    return [
      ListingModel(
        id: '1',
        baslik: 'Matematik Dersi Veriyorum',
        aciklama: 'Lise ve üniversite seviyesinde matematik dersi.',
        kategori: 'Matematik',
        tip: ListingType.teacher,
        ilanSahibiUid: 'mock_uid_1',
        ilanSahibiAdi: 'Ahmet Yılmaz',
        ilanSahibiAvatarUrl: '',
        olusturmaTarihi: DateTime.now(),
      ),
      ListingModel(
        id: '2',
        baslik: 'İngilizce Öğrenmek İstiyorum',
        aciklama: 'B1 seviyesinden B2 seviyesine çıkmak istiyorum.',
        kategori: 'İngilizce',
        tip: ListingType.student,
        ilanSahibiUid: 'mock_uid_2',
        ilanSahibiAdi: 'Elif Demir',
        ilanSahibiAvatarUrl: '',
        olusturmaTarihi: DateTime.now(),
      ),
      ListingModel(
        id: '3',
        baslik: 'Python Programlama Öğretebilirim',
        aciklama: 'Sıfırdan Python eğitimi. Proje tabanlı öğretim.',
        kategori: 'Programlama',
        tip: ListingType.teacher,
        ilanSahibiUid: 'mock_uid_3',
        ilanSahibiAdi: 'Can Kaya',
        ilanSahibiAvatarUrl: '',
        olusturmaTarihi: DateTime.now(),
      ),
      ListingModel(
        id: '4',
        baslik: 'Gitar Dersi Arıyorum',
        aciklama: 'Akustik gitar için başlangıç seviyesi ders arıyorum.',
        kategori: 'Müzik',
        tip: ListingType.student,
        ilanSahibiUid: 'mock_uid_4',
        ilanSahibiAdi: 'Zeynep Aksoy',
        ilanSahibiAvatarUrl: '',
        olusturmaTarihi: DateTime.now(),
      ),
    ];
  }
}
