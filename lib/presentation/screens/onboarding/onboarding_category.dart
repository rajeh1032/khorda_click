import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingCategory extends StatelessWidget {
  OnboardingCategory(
      {required this.image1, required this.title, required this.subTitle});
  String image1;
  String title;
  String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //image
          ClipPath(
            clipper: BottomCurveClipper(), // 🔥 تطبيق المنحنى على الصورة
            child: Image.asset(
              image1, // ضع مسار الصورة هنا
              width: double.infinity,
              height: 500,
              fit: BoxFit.cover,
            ),
          ),
          //title
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.almarai(
                fontSize: 35,
                fontWeight: FontWeight.w800,
                color: Colors.black87,
              ),
            ),
          ),
          //sub title
          Expanded(
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.almarai(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey[700],
              ),
            ),
          ),
        ],
      
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 70); // حدد بداية المنحنى
    path.quadraticBezierTo(
      size.width / 2, size.height, // نقطة التحكم في المنتصف
      size.width, size.height - 70, // نهاية المنحنى
    );
    path.lineTo(size.width, 0); // إكمال باقي الصورة
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
