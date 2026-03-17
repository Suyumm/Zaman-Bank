import 'package:firebase_auth/firebase_auth.dart';
import 'package:zaman_bankasi/features/auth/model/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zaman_bankasi/features/auth/repository/user_repository.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final UserRepository _userRepository; // YENİ

  AuthRepository(this._userRepository); // YENİ - Constructor ile alıyoruz

  // 1) KAYIT OL
  Future<(bool, String?)> kayitOl({
    required String email,
    required String sifre,
    required String adSoyad,
  }) async {
    try {
      // Firebase Auth'ta hesap oluştur
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: sifre,
      );

      // Auth başarılıysa, UserRepository ile Firestore'a kaydet
      final yeniKullanici = UserModel(
        uid: credential.user!.uid,
        email: email,
        name: adSoyad,
        kayitTarihi: DateTime.now(),
      );
      await _userRepository.kullaniciOlustur(yeniKullanici);

      return (true, null); // Başarılı, hata yok
    } on FirebaseAuthException catch (e) {
      return (false, _hataMesajiGetir(e.code));
    } catch (e) {
      return (false, 'Beklenmeyen bir hata oluştu: $e');
    }
  }

  // 2) GİRİŞ YAP
  Future<(bool, String?)> girisYap({
    required String email,
    required String sifre,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: sifre);
      return (true, null);
    } on FirebaseAuthException catch (e) {
      return (false, _hataMesajiGetir(e.code));
    } catch (e) {
      return (false, 'Beklenmeyen bir hata oluştu: $e');
    }
  }

  // 3) ÇIKIŞ YAP
  Future<void> cikisYap() async {
    await _auth.signOut();
  }

  // YARDIMCI: Firebase hata kodlarını Türkçe'ye çevir
  String _hataMesajiGetir(String kod) {
    switch (kod) {
      case 'email-already-in-use':
        return 'Bu e-posta adresi zaten kullanılıyor.';
      case 'weak-password':
        return 'Şifre çok zayıf. En az 6 karakter olmalı.';
      case 'invalid-email':
        return 'Geçersiz e-posta adresi.';
      case 'user-not-found':
        return 'Bu e-posta ile kayıtlı kullanıcı bulunamadı.';
      case 'wrong-password':
        return 'Şifre yanlış.';
      case 'user-disabled':
        return 'Bu hesap devre dışı bırakılmış.';
      case 'too-many-requests':
        return 'Çok fazla deneme yaptınız. Lütfen biraz bekleyin.';
      default:
        return 'Bir hata oluştu: $kod';
    }
  }
}

// AuthRepository'yi uygulama genelinde tek instance olarak sağlar
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final userRepository = ref.read(userRepositoryProvider);
  return AuthRepository(userRepository);
});
// kullanımı = ref.read(authRepositoryProvider).kayitOl(...)

// Firebase Auth'un oturum durumunu canlı dinler (Stream)
final authStateProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});

/*
authStateChanges() → Firebase Auth'un kendi metodu. 
Kullanıcı giriş yapınca Firebase'in kendi "User" objesi (uid, email içerir),
çıkış yapınca null yayınlar.
NOT: Bu Firebase'in "User" objesidir, bizim "UserModel" değil!
UserModel'ı almak için ayrıca Firestore'dan çekmemiz gerekir.
*/
