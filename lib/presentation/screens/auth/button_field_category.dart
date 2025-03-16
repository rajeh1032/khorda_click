import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonFieldCategory extends StatelessWidget {
  ButtonFieldCategory(
      {required this.backgroundColorButton,
      required this.textOfButton,
      required this.TextColor,
      this.iconWithText,
      required this.onPressdFunction});
  Color backgroundColorButton;
  String textOfButton;
  Color TextColor;
  String? iconWithText;
  VoidCallback onPressdFunction;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
          onPressed: onPressdFunction,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColorButton, // لون الخلفية

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // الحواف الدائرية
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (iconWithText != null) ...[
                Image.asset(iconWithText!), // عرض الأيقونة إذا تم تمريرها
                const SizedBox(width: 4),
              ],
              Text(
                textOfButton,
                style: GoogleFonts.almarai(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: TextColor,
                ),
              ),
            ],
          )),
    );
  }
}
