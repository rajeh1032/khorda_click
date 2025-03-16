import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khorda_click/presentation/screens/onboarding/onboarding_2.dart';
import 'package:khorda_click/presentation/screens/onboarding/onboarding_category.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});
  static const String routName = "Onboarding1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: OnboardingCategory(
              image1: 'assets/images/splash.jpg',
              title: "اخلص من كل كراكيبك عندنا واستفاد بفلوسها",
              subTitle:
                  "برنامج لبيع الخردة والمواد القابلة لإعادة التدوير والعناصر القديمة. من المعادن إلى الإلكترونيات والمزيد - تخلص من الفوضى واكسب دون عناء ، كل ذلك في متناول يدك",
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 55,
            child: ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, Onboarding2.routName);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff667999), // لون الخلفية

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // الحواف الدائرية
                ),
              ),
              child: Text(
                "التالي",
                style: GoogleFonts.almarai(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
