import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zaman_bankasi/features/auth/model/user_model.dart';

class UserRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Yeni kullanıcıyı Firestore'a kaydet
  Future<void> kullaniciOlustur(UserModel kullanici) async {
    await _firestore
        .collection('Users')
        .doc(kullanici.uid)
        .set(kullanici.toJson());
  }

  // UID ile kullanıcı bilgilerini Firestore'dan getir
  Future<UserModel?> kullaniciyiGetir(String uid) async {
    final doc = await _firestore.collection('Users').doc(uid).get();
    if (doc.exists && doc.data() != null) {
      return UserModel.fromJson(doc.data()!);
    }
    return null;
  }
}

// Riverpod Provider
final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository();
});
