import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zaman_bankasi/features/listings/model/listing_model.dart';
import 'package:zaman_bankasi/features/listings/repository/listing_repository.dart';
import 'package:zaman_bankasi/features/listings/repository/mock_listing_repository.dart';

// 1) Repository Provider
// ★ İleride Firestore'a geçince SADECE bu satırı değiştiricez:
// Firestore'a geçince   "return MockListingRepository();"  -->  "return FirestoreListingRepository();"
final listingRepositoryProvider = Provider<ListingRepository>((ref) {
  return MockListingRepository();
});

// 2) Tüm ilanları çeken FutureProvider
final listingsProvider = FutureProvider<List<ListingModel>>((ref) async {
  final repository = ref.read(listingRepositoryProvider);
  return repository.ilanlariGetir();
});

// 3) Sadece öğrenci ilanlarını filtreleyen provider ("Öğret" sekmesi)
final studentListingsProvider = FutureProvider<List<ListingModel>>((ref) async {
  final tumIlanlar = await ref.watch(listingsProvider.future);
  return tumIlanlar.where((ilan) => ilan.tip == ListingType.student).toList();
});

// 4) Sadece öğretmen ilanlarını filtreleyen provider ("Öğren" sekmesi)
final teacherListingsProvider = FutureProvider<List<ListingModel>>((ref) async {
  final tumIlanlar = await ref.watch(listingsProvider.future);
  return tumIlanlar.where((ilan) => ilan.tip == ListingType.teacher).toList();
});
