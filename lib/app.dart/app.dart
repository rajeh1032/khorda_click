import 'package:flutter/material.dart';
import 'package:khorda_click/presentation/screens/auth/login_screen.dart';
import 'package:khorda_click/presentation/screens/auth/register_screen.dart';
import 'package:khorda_click/presentation/screens/home/home_screen.dart';
import 'package:khorda_click/presentation/screens/onboarding/onboarding_1.dart';
import 'package:khorda_click/presentation/screens/onboarding/onboarding_2.dart';
import 'package:khorda_click/presentation/screens/onboarding/onboarding_3.dart';
import 'package:khorda_click/presentation/screens/splash/splash_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KhordaClick',
      initialRoute: SplashScreen.routName,
      routes: {
        SplashScreen.routName: (context) => const SplashScreen(),
        Onboarding1.routName: (context) => const Onboarding1(),
        Onboarding2.routName: (context) => const Onboarding2(),
        Onboarding3.routName: (context) => const Onboarding3(),
        LoginScreen.routName: (context) => const LoginScreen(),
        RegisterScreen.routName: (context) => const RegisterScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}
