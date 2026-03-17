import 'package:zaman_bankasi/features/listings/model/listing_model.dart';

/// İlan verileri için kontrat (abstract class).
/// Tüm repository implementasyonları bu sınıfı uygular.
abstract class ListingRepository {
  Future<List<ListingModel>> ilanlariGetir();
}
