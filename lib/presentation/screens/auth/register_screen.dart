import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khorda_click/presentation/screens/auth/button_field_category.dart';
import 'package:khorda_click/presentation/screens/auth/email_field_category.dart';
import 'package:khorda_click/presentation/screens/auth/password_filed_category.dart';
import 'package:khorda_click/presentation/screens/home/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const String routName = "RegisterScreen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(8),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  //title
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "انشاء حساب",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.almarai(
                        fontSize: 35,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xff404040),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //subtitle
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "املأ التفاصيل الخاصة بك أدناه للبدء",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.almarai(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  //اسم المستخد
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          cursorColor: const Color(0xff667999),
                          decoration: InputDecoration(
                            labelText: "الاسم الثاني",
                            labelStyle: GoogleFonts.almarai(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey[600],
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            alignLabelWithHint: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide.none, // إزالة الحدود الافتراضية
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                color: Color(0xff667999),
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(
                                "assets/icons/user-icon.png",
                                color: Colors.grey[600],
                                height: 24,
                                width: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          cursorColor: const Color(0xff667999),
                          decoration: InputDecoration(
                            labelText: "الاسم الاول ",
                            labelStyle: GoogleFonts.almarai(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey[600],
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            alignLabelWithHint: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide.none, // إزالة الحدود الافتراضية
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                color: Color(0xff667999),
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(
                                "assets/icons/user-icon.png",
                                color: Colors.grey[600],
                                height: 24,
                                width: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  /// حقل البريد الإلكتروني
                  EmailFieldCategory(),
                  const SizedBox(height: 20),

                  /// حقل كلمة المرور
                  PasswordFieldCategory(),
                  const SizedBox(height: 20),
                  //حقل رقم الهاتف
                  TextFormField(
                    cursorColor: const Color(0xff667999),
                    keyboardType: TextInputType.phone, // نوع الإدخال للهاتف
                    decoration: InputDecoration(
                      labelText: "رقم الهاتف",
                      labelStyle: GoogleFonts.almarai(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey[600],
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none, // إزالة الحدود الافتراضية
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: Color(0xff667999),
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1.5,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.phone_android_outlined,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "بالنقر على 'إنشاء حساب'، فإنك تقر بأنك قد قرأت ووافقت على **شروط الاستخدام** و**سياسة الخصوصية** الخاصة بنا.",
                      textAlign: TextAlign.right,
                      style: GoogleFonts.almarai(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  /// زر تسجيل الدخول
                  ButtonFieldCategory(
                    backgroundColorButton: const Color(0xff667999),
                    textOfButton: "انشاء حساب",
                    TextColor: Colors.white,
                    onPressdFunction: () {
                      if (_formKey.currentState!.validate()) {
                        // TODO: تنفيذ تسجيل الدخول
                        Navigator.popAndPushNamed(
                            context, HomeScreen.routeName);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                            "تم انشاء الحساب  بنجاح",
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
                ],
              ),
            ),
          ),
        ));
  }
}
