import 'package:flutter/material.dart';
import 'package:khorda_click/presentation/screens/onboarding/onboarding_1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String routName = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // مدة الأنيميشن
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

    _controller.forward(); // تشغيل الأنيميشن عند فتح الشاشة

    // تأخير لمدة 3 ثوانٍ ثم الانتقال إلى الشاشة الرئيسية
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Onboarding1.routName);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC8CFD3),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Opacity(
              opacity: _fadeAnimation.value,
              child: Transform.scale(
                scale: _scaleAnimation.value,
                child: Transform.translate(
                  offset: const Offset(0, -50), // ✅ نقل المحتوى للأعلى
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/images/splashicon.png",
                        width: 160,
                        height: 160,
                      ),
                      GradientText(
                        text: 'KhordaClick',
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue.shade900,
                            Colors.blueGrey.shade400
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Transforming Old Into Gold',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// مكون النص المتدرج GradientText
class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;

  const GradientText({
    super.key,
    required this.text,
    required this.style,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: style.copyWith(color: Colors.white),
      ),
    );
  }
}
