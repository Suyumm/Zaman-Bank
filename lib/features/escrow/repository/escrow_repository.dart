import 'package:cloud_firestore/cloud_firestore.dart';

class EscrowRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> ilanaTalipOl({
    required String ilanId,
    required String hizmetAlanUid, // İlanı açan (1 kredisi düşecek olan)
    required String hizmetVerenUid, // Talip olan (hizmeti verecek olan)
  }) async {
    // Tablo referansları
    final userRef = _firestore.collection('Users').doc(hizmetAlanUid);
    final ilanRef = _firestore.collection('İlanlar').doc(ilanId);
    final havuzRef = _firestore.collection('HavuzIslemleri').doc();
    
    await _firestore.runTransaction((transaction) async {
      // Önce ilanı açan kişinin verisini oku
      final userSnapshot = await transaction.get(userRef);
      if (!userSnapshot.exists) {
        throw Exception("Kullanıcı bulunamadı.");
      }

      // Kredisi 1'den büyük veya eşit mi
      final mevcutKredi = userSnapshot.data()?['zaman_kredisi'] ?? 0;
      if (mevcutKredi < 1) {
        throw Exception("İlan sahibinin yeterli zaman kredisi yok.");
      }

      // İlan hala "Acik" durumunda mı kontrol et 
      final ilanSnapshot = await transaction.get(ilanRef);
      if (ilanSnapshot.data()?['durum'] != 'Acik') {
        throw Exception("Bu ilan artık açık değil veya başkası talip olmuş.");
      }

      // Hizmet alanın kredisini 1 düşür 
      transaction.update(userRef, {'zaman_kredisi': mevcutKredi - 1});

      // İlanın durumunu "Eslesti" yap
      transaction.update(ilanRef, {'durum': 'Eslesti'});

      // Havuz kaydı oluştu
      transaction.set(havuzRef, {
        'islem_id': havuzRef.id,
        'ilan_id': ilanId,
        'hizmet_veren_uid': hizmetVerenUid,
        'hizmet_alan_uid': hizmetAlanUid,
        'bloke_kredi': 1,
        'baslangic_zamani': FieldValue.serverTimestamp(), // Firebase'in kendi saatini kullanırız
        'durum': 'Havuzda',
      });
    });
  }
}