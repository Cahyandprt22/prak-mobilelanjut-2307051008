import 'package:flutter/material.dart';
import 'dart:async';
import 'package:myapp/screens/dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String route = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToDashboard();
  }

  void _navigateToDashboard() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, DashboardScreen.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo-mola.png', fit: BoxFit.contain),
            const SizedBox(height: 24),

            const CircularProgressIndicator(
              color: Color(0xFF1E88FF),
              strokeWidth: 2.8,
            ),
            const SizedBox(height: 16),

            Text(
              'Loading Der Sabar...',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
