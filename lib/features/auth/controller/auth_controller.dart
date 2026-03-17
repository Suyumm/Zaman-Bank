import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zaman_bankasi/features/auth/model/user_model.dart';
import 'package:zaman_bankasi/features/auth/repository/auth_repository.dart';
import 'package:zaman_bankasi/features/auth/repository/user_repository.dart';

// 1) Kullanıcının oturum durumuna göre UserModel'ı çeken provider
final currentUserProvider = FutureProvider<UserModel?>((ref) async {
  final authState = ref.watch(authStateProvider);

  return authState.when(
    data: (firebaseUser) async {
      if (firebaseUser == null) return null;
      // Giriş yapmışsa Firestore'dan UserModel'ı çek
      final userRepo = ref.read(userRepositoryProvider);
      return await userRepo.kullaniciyiGetir(firebaseUser.uid);
    },
    loading: () => null,
    error: (_, _) => null,
  );
});

// 2) Auth işlemlerini yöneten controller
class AuthController extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    // Başlangıçta bir şey yapmıyoruz
  }

  Future<(bool, String?)> kayitOl({
    required String email,
    required String sifre,
    required String adSoyad,
  }) async {
    state = const AsyncLoading(); // UI'da loading göster

    final authRepo = ref.read(authRepositoryProvider);
    final sonuc = await authRepo.kayitOl(
      email: email,
      sifre: sifre,
      adSoyad: adSoyad,
    );

    if (sonuc.$1) {
      state = const AsyncData(null); // Başarılı
    } else {
      state = AsyncError(sonuc.$2 ?? 'Bilinmeyen hata', StackTrace.current);
    }

    return sonuc;
  }

  Future<(bool, String?)> girisYap({
    required String email,
    required String sifre,
  }) async {
    state = const AsyncLoading();

    final authRepo = ref.read(authRepositoryProvider);
    final sonuc = await authRepo.girisYap(email: email, sifre: sifre);

    if (sonuc.$1) {
      state = const AsyncData(null);
    } else {
      state = AsyncError(sonuc.$2 ?? 'Bilinmeyen hata', StackTrace.current);
    }

    return sonuc;
  }

  Future<void> cikisYap() async {
    final authRepo = ref.read(authRepositoryProvider);
    await authRepo.cikisYap();
    state = const AsyncData(null);
  }
}

// 3) AuthController'ın provider'ı   (niye kapanmıyo diye merak etmeyin ha tek satır bi işlem bu :D )
final authControllerProvider = AsyncNotifierProvider<AuthController, void>(
  () => AuthController(),
);

/// ESKİ olan bu
// final authControllerProvider =
//     AsyncNotifierProvider.autoDispose<AuthController, void>(
//       () => AuthController(),
//     );
