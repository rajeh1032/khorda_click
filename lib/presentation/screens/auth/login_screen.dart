import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khorda_click/presentation/screens/auth/button_field_category.dart';
import 'package:khorda_click/presentation/screens/auth/email_field_category.dart';

import 'package:khorda_click/presentation/screens/auth/password_filed_category.dart';
import 'package:khorda_click/presentation/screens/auth/register_screen.dart';
import 'package:khorda_click/presentation/screens/home/home_screen.dart'; // تصحيح الاسم

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routName = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "!اهلا بالعوده",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.almarai(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xff404040),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "أدخل بريدك الإلكتروني وتخلص من كراكيبك واحصل على عروض رائعة اليوم!",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.almarai(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  /// حقل البريد الإلكتروني
                  EmailFieldCategory(),
                  const SizedBox(height: 20),

                  /// حقل كلمة المرور
                  PasswordFieldCategory(),
                  const SizedBox(height: 10),

                  /// رابط استعادة كلمة المرور
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // TODO: تنفيذ الانتقال إلى شاشة استعادة كلمة المرور
                      },
                      child: Text(
                        'نسيت كلمة المرور؟',
                        style: GoogleFonts.almarai(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xff667999),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  /// زر تسجيل الدخول
                  ButtonFieldCategory(
                    backgroundColorButton: const Color(0xff667999),
                    textOfButton: "تسجيل الدخول",
                    TextColor: Colors.white,
                    onPressdFunction: () {
                      if (_formKey.currentState!.validate()) {
                        // TODO: تنفيذ تسجيل الدخول
                        Navigator.popAndPushNamed(
                            context, HomeScreen.routeName);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                            "تم تسجيل الدخول بنجاح",
                            textAlign: TextAlign.right,
                          )),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 20),

                  /// الفاصل OR
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade400,
                          thickness: 1.2,
                          indent: 20,
                          endIndent: 10,
                        ),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade400,
                          thickness: 1.2,
                          indent: 10,
                          endIndent: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  /// تسجيل الدخول بجوجل
                  ButtonFieldCategory(
                    backgroundColorButton: Colors.white,
                    textOfButton: "تسجيل ب جوجل",
                    TextColor: const Color(0xff667999),
                    iconWithText: "assets/icons/flat-color-icons_google.png",
                    onPressdFunction: () {
                      // TODO: تنفيذ تسجيل الدخول بجوجل
                    },
                  ),
                  const SizedBox(height: 20),

                  /// تسجيل الدخول بفيسبوك
                  ButtonFieldCategory(
                    backgroundColorButton: Colors.white,
                    textOfButton: "تسجيل ب فيس بوك",
                    TextColor: const Color(0xff667999),
                    iconWithText: "assets/icons/cib_facebook-f.png",
                    onPressdFunction: () {
                      // TODO: تنفيذ تسجيل الدخول بفيسبوك
                    },
                  ),
                  const SizedBox(height: 20),

                  /// رابط التسجيل
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ليس لديك حساب؟',
                        style: GoogleFonts.almarai(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // TODO: تنفيذ الانتقال إلى شاشة التسجيل

                          Navigator.popAndPushNamed(
                              context, RegisterScreen.routName);
                        },
                        child: Text(
                          'سجل الآن',
                          style: GoogleFonts.almarai(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
