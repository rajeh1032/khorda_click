import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageView extends StatelessWidget {
  final PageController controller;
  final List<String> images;

  const CustomPageView({
    super.key,
    required this.controller,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          SizedBox(
            height: 160,
            child: PageView(
              controller: controller,
              children: images.map((image) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 10),
          SmoothPageIndicator(
            controller: controller,
            count: images.length,
            effect: const ExpandingDotsEffect(
              dotColor: Colors.grey,
              activeDotColor: Color(0xff667999),
              dotHeight: 8,
              dotWidth: 8,
              expansionFactor: 2,
            ),
          ),
        ],
      ),
    );
  }
}
