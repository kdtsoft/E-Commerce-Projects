import 'package:crafty_bay/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller_binder/controller_binder.dart';
import 'presentation/utility/app_colors.dart';

class CraftyBay extends StatefulWidget {
  const CraftyBay({super.key});

  @override
  State<CraftyBay> createState() => _CraftyBayState();
}

class _CraftyBayState extends State<CraftyBay> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinder(),
      home: const SplashScreen(),
      theme: ThemeData(
        colorSchemeSeed: AppColors.primaryColor,
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.primaryColor,
        ),
        textTheme: _textTheme(),
        inputDecorationTheme: _inputDecorationTheme(),
        elevatedButtonTheme: _buildElevatedButtonThemeData(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primaryColor,
          )
        )
      ),
    );
  }




  ElevatedButtonThemeData _buildElevatedButtonThemeData() {
    return ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size.fromWidth(double.maxFinite),
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      );
  }

  TextTheme _textTheme() => const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        headlineSmall: TextStyle(
          fontSize: 14,
          color: Colors.blueGrey,
        ),
      );

  InputDecorationTheme _inputDecorationTheme() => InputDecorationTheme(
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
        border: _outlineInputBorder,
        enabledBorder: _outlineInputBorder,
        focusedBorder: _outlineInputBorder,
        errorBorder: _outlineInputBorder.copyWith(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      );

  final OutlineInputBorder _outlineInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.primaryColor,
    ),
  );
}
