import 'package:crafty_bay/presentation/screens/email_verification_screen.dart';
import 'package:crafty_bay/presentation/screens/home_screen.dart';
import 'package:crafty_bay/presentation/screens/main_bottom_nav_bar_screen.dart';
import 'package:crafty_bay/presentation/state_holders/bottom_nav_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.off(() => const MainBottomNavBarScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            AppLogo(),
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(
              height: 16,
            ),
            Text("Version 1.0.0"),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}


