import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zaman_bankasi/features/listings/controller/listing_controller.dart';
import 'package:zaman_bankasi/features/listings/model/listing_model.dart';
import 'package:zaman_bankasi/features/listings/presentation/widgets/listing_card.dart';

/// Ana Feed ekranı — "Öğret" ve "Öğren" sekmelerini içerir.
class FeedScreen extends ConsumerWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Zaman Bankası'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.school), text: 'Öğret'),
              Tab(icon: Icon(Icons.menu_book), text: 'Öğren'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // 1. sekme: Öğret (öğrencilerin ilanları)
            _IlanListesi(provider: studentListingsProvider),
            // 2. sekme: Öğren (öğretmenlerin ilanları)
            _IlanListesi(provider: teacherListingsProvider),
          ],
        ),
      ),
    );
  }
}

/// Her sekme için ilan listesini gösteren yardımcı widget.
/// "_" ile başlıyor → bu dosyaya özel (private), dışarıdan erişilemez.
class _IlanListesi extends ConsumerWidget {
  final FutureProvider<List<ListingModel>> provider;

  const _IlanListesi({required this.provider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ilanlarAsync = ref.watch(provider);

    return ilanlarAsync.when(
      // Veri başarıyla geldiyse
      data: (ilanlar) {
        if (ilanlar.isEmpty) {
          return const Center(child: Text('Henüz ilan bulunmuyor.'));
        }
        return ListView.builder(
          itemCount: ilanlar.length,
          itemBuilder: (context, index) {
            return ListingCard(ilan: ilanlar[index]);
          },
        );
      },
      // Yükleniyorsa
      loading: () => const Center(child: CircularProgressIndicator()),
      // Hata olduysa
      error: (error, stack) => Center(child: Text('Hata: $error')),
    );
  }
}
