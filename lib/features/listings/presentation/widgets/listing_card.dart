import 'package:flutter/material.dart';
import 'package:zaman_bankasi/features/listings/model/listing_model.dart';

/// Tek bir ilanı kart olarak gösteren widget.
class ListingCard extends StatelessWidget {
  final ListingModel ilan;

  const ListingCard({super.key, required this.ilan});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sol taraf: Avatar
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.deepPurple.shade100,
              backgroundImage: ilan.ilanSahibiAvatarUrl.isNotEmpty
                  ? NetworkImage(ilan.ilanSahibiAvatarUrl)
                  : null,
              child: ilan.ilanSahibiAvatarUrl.isEmpty
                  ? Text(
                      ilan.ilanSahibiAdi[0].toUpperCase(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: 12),
            // Sağ taraf: İlan bilgileri
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Başlık
                  Text(
                    ilan.baslik,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  // Açıklama
                  Text(
                    ilan.aciklama,
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  // Alt bilgi: Kategori + İlan sahibi
                  Row(
                    children: [
                      // Kategori chip'i
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade50,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          ilan.kategori,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.deepPurple.shade700,
                          ),
                        ),
                      ),
                      const Spacer(),
                      // İlan sahibi adı
                      Text(
                        ilan.ilanSahibiAdi,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
