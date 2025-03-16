import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailFieldCategory extends StatefulWidget {
  const EmailFieldCategory({super.key});

  @override
  State<EmailFieldCategory> createState() => _EmailFieldCategoryState();
}

class _EmailFieldCategoryState extends State<EmailFieldCategory> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose(); // تجنب تسريبات الذاكرة
    super.dispose();
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'البريد الإلكتروني مطلوب';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'بريد إلكتروني غير صالح';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xff667999),
      controller: _emailController,
      decoration: InputDecoration(
        labelText: "البريد الإلكتروني",
        labelStyle: GoogleFonts.almarai(
          fontSize: 16,
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
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2,
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
            "assets/icons/mail-icon.png",
            color: Colors.grey[600],
            height: 24,
            width: 24,
          ),
        ),
      ),
      validator: _validateEmail,
    );
  }
}
