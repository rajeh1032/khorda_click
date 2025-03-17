import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String name;
  final String? price;
  final bool showPrice;

  const CategoryItem({
    super.key,
    required this.image,
    required this.name,
    this.price,
    this.showPrice = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120, // Constrain width for horizontal scroll consistency
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF2EFDC),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 130, // Limit the height to fit within the parent SizedBox
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 60, // Reduced size for better fit
              height: 60,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error,
                    size: 60); // Fallback for broken images
              },
            ),
            const SizedBox(height: 8),
            Text(
              name,
              textAlign: TextAlign.center,
              style: GoogleFonts.almarai(
                fontSize: 14, // Reduced font size
                fontWeight: FontWeight.bold,
                color: Colors.green.shade700,
              ),
              overflow: TextOverflow.ellipsis, // Handle long text
              maxLines: 1,
            ),
            if (showPrice && price != null) ...[
              const SizedBox(height: 4),
              Text(
                "$price جنيه",
                style: GoogleFonts.almarai(
                  fontSize: 12, // Reduced font size
                  fontWeight: FontWeight.w600,
                  color: Colors.green.shade900,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
