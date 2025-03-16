import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khorda_click/presentation/screens/auth/login_screen.dart';
import 'package:khorda_click/presentation/screens/onboarding/onboarding_2.dart';
import 'package:khorda_click/presentation/screens/onboarding/onboarding_category.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});
  static const String routName = "Onboarding3";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: OnboardingCategory(
                image1: 'assets/images/splash3.png',
                title: "احصل على المساعدة من فريق العمل لدينا",
                subTitle:
                    "إذا كانت خدمتنا لا تلبي توقعاتك ، فإن فريقنا موجود هنا 24/7 لدعمك"),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 55,
                  child: TextButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, Onboarding2.routName);
                    },
                    child: Text(
                      "السابق",
                      style: GoogleFonts.almarai(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff667999),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, LoginScreen.routName);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff667999), // لون الخلفية

                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(12), // الحواف الدائرية
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
