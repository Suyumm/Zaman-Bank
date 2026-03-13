# Zaman Bankası - Veritabanı Şeması (Firebase Firestore)

## 1. Users (Kullanıcılar)
- `uid` (String): Firebase Auth'tan gelen benzersiz ID.
- `ad_soyad` (String): Kullanıcının ismi.
- `email` (String): @kent.edu.tr uzantılı mail (Pilot test doğrulama için).
- `zaman_kredisi` (Number): Mevcut bakiye (Başlangıç değeri: 3).
- `is_premium` (Boolean): Reklamsız ve acil ilan yetkisi.
- `rozetler` (Array): ["Seri Eğitmen", "Yardımsever"] gibi başarılar.
- `kayit_tarihi` (Timestamp): Hesabın oluşturulma anı.

## 2. İlanlar (Talepler)
- `ilan_id` (String): İlanın benzersiz ID'si.
- `sahibi_uid` (String): İhtiyacı olan kişinin UID'si.
- `baslik` (String): İhtiyaç duyulan hizmet/ders adı.
- `aciklama` (String): Detaylı açıklama.
- `kategori` (String): Yazılım, Dil, Tasarım vb.
- `durum` (String): "Açık", "Eşleşti", "Tamamlandı".

## 3. HavuzIslemleri (Escrow & 15 Dakika Kuralı)
- `islem_id` (String): İşlem ID.
- `ilan_id` (String): Bağlı olduğu ilan.
- `hizmet_veren_uid` (String): Yeteneğini paylaşan kişi.
- `hizmet_alan_uid` (String): İhtiyacı olan kişi.
- `bloke_kredi` (Number): Havuza alınan 1 kredi.
- `baslangic_zamani` (Timestamp): Hizmetin başladığı tam an.
- `durum` (String): "Havuzda", "Başarılı", "Iptal_Geri_Iade", "Iptal_Oranli_Aktarim".

## 4. Degerlendirmeler (Zorunlu Geri Bildirim)
- `degerlendirme_id` (String).
- `islem_id` (String): Hangi dersin değerlendirmesi.
- `yildiz` (Number): 1-5 arası puan.
- `yorum` (String): Kullanıcı geri bildirimi.
- `sikayet_etiketleri` (Array): Yıldız <= 3 ise zorunlu seçilen ["Geç geldi", "Yetersiz"] gibi etiketler.