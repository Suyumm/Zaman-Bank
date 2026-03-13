import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/escrow_repository.dart';

// Repoyu Riverpoda tanıtıyoruz
final escrowRepositoryProvider = Provider((ref) => EscrowRepository());

final escrowControllerProvider = AsyncNotifierProvider<EscrowController, void>(() {
  return EscrowController();
});

class EscrowController extends AsyncNotifier<void> {
  late final EscrowRepository _repository;

  @override
  FutureOr<void> build() {
    _repository = ref.read(escrowRepositoryProvider);
  }

  Future<void> talipOlTetikle({
    required String ilanId,
    required String hizmetAlanUid,
    required String hizmetVerenUid,
  }) async {
    try {
      // Yükleniyor durumuna geç
      state = const AsyncValue.loading();
      
      // Firebase işlemini başlat
      await _repository.ilanaTalipOl(
        ilanId: ilanId, 
        hizmetAlanUid: hizmetAlanUid, 
        hizmetVerenUid: hizmetVerenUid,
      );
      
      // İşlem başarılı vebitti
      state = const AsyncValue.data(null);
    } catch (e, stackTrace) {
      // Hata olursa yakala ve arayüze bildir
      state = AsyncValue.error(e, stackTrace);
    }
  }
}