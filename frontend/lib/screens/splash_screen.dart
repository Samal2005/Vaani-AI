import 'dart:async';
import 'package:flutter/material.dart';
import 'language_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const LanguageScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F3EF),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/illustrations/splash_wave.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),

          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Main Illustration
                  SizedBox(
                    width: 280,
                    child: Image.asset(
                      'assets/illustrations/splash_main.png',
                    ),
                  ),

                  const SizedBox(height: 24),

                  /// Logo
                  SizedBox(
                    width: 160,
                    child: Image.asset(
                      'assets/illustrations/splash_logo.png',
                    ),
                  ),

                  const SizedBox(height: 10),

                  /// Tagline
                  const Text(
                    'Every Gesture Has A Voice',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF6D6A86),
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 24),

                  /// Dots
                  SizedBox(
                    width: 70,
                    child: Image.asset(
                      'assets/illustrations/splash_dots.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}