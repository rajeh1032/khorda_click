import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/home-icon.png"),
          label: "الرئيسية",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/cart-icon.png"),
          label: "العربة",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/cart-icon.png"),
          label: "أقسام",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/icons/user-icon.png"),
          label: "حسابي",
        ),
      ],
    );
  }
}
