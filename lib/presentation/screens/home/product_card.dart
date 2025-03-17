import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ProductCard({
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 6)],
      ),
      child: Column(
        children: [
          Image.asset(image, height: 60),
          Text(
            name,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(price, style: TextStyle(fontSize: 14, color: Colors.green)),
        ],
      ),
    );
  }
}
