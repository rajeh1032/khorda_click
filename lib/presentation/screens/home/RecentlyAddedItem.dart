import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentlyAddedItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const RecentlyAddedItem({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      padding: const EdgeInsets.all(10),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            child: Text(
              "اضف الي العربه",
              style: GoogleFonts.almarai(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  name,
                  style: GoogleFonts.almarai(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade700,
                  ),
                  textAlign: TextAlign.end,
                ),
                const SizedBox(height: 2), // Reduced from 4
                Text(
                  price,
                  style: GoogleFonts.almarai(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.green.shade900,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Image.asset(
            image,
            width: 80,
            height: 60,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error, size: 60);
            },
          ),
        ],
      ),
    );
  }
}
