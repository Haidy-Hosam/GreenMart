import 'dart:io';
import 'package:flutter/material.dart';
import 'package:green_mart/Core/Constants/app_fonts.dart';
import 'package:green_mart/Core/Styles/colors.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';
import 'Features/intro/splash_sreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: AppFonts.poppins,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: AppColors.blackColor),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
          onSurface: AppColors.blackColor,
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyles.caption1.copyWith(color: AppColors.greyColor),
          fillColor: AppColors.lightGreyColor,
          filled: true,
          // suffixIcon: suffixicon,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          //   borderSide: BorderSide.none,
          // ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.blue),
            borderRadius: BorderRadius.circular(20),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.red),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightred),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      builder: (context, child) {
        return SafeArea(
          bottom: Platform.isAndroid ? true : false,
          top: false,
          child: child ?? Container(),
        );
      },
      home: Scaffold(body: SplashSreen()),
    );
  }
}
