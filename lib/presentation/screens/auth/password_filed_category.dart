import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordFieldCategory extends StatefulWidget {
  const PasswordFieldCategory({super.key});

  @override
  State<PasswordFieldCategory> createState() => _PasswordFieldCategoryState();
}

class _PasswordFieldCategoryState extends State<PasswordFieldCategory> {
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'كلمة المرور مطلوبة';
    }
    if (value.length < 6) {
      return 'كلمة المرور يجب أن تكون على الأقل 6 أحرف';
    }
    return null;
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  void dispose() {
    _passwordController.dispose(); // تحرير الموارد عند التخلص من الـ widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xff667999),
      controller: _passwordController,
      obscureText: !_isPasswordVisible,
      decoration: InputDecoration(
        labelText: 'كلمة المرور',
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
          borderSide: BorderSide.none,
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
            "assets/icons/lock-icon.png",
            color: Colors.grey[600],
            height: 24,
            width: 24,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: _togglePasswordVisibility,
          icon: Icon(
            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey[600], // ضبط لون الأيقونة
          ),
        ),
      ),
      validator: _validatePassword,
    );
  }
}
