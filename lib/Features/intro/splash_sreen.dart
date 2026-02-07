import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/Core/Constants/app_image.dart';
import 'package:green_mart/Core/HelperMethods/navigations.dart';
import 'package:green_mart/Features/Welcome/welcome.dart';
import '../../Core/Styles/colors.dart';

class SplashSreen extends StatefulWidget {
  const SplashSreen({super.key});

  @override
  State<SplashSreen> createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      PushReplasment(context, Welcome());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body : Center(
        child: SvgPicture.asset(AppImage.logosvg),
      ),
    );
  }
}