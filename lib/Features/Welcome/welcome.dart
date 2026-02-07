import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/Core/Constants/ElevatedBottun.dart';
import 'package:green_mart/Core/Constants/app_image.dart';
import 'package:green_mart/Core/Styles/colors.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';
import 'package:green_mart/Features/login/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              AppImage.Welcome,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 450,
            left: 0,
            right: 0,
            child: Center(
              child: SvgPicture.asset(
                AppImage.carrotsvg,
                width: 70,
                height: 70,
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Welcome\n to Our Store',
                textAlign: TextAlign.center,
                style: TextStyles.headline.copyWith(
                  color: AppColors.backgroundColor,
                ),
              ),
            ),
          ),
          Positioned(
            top: 700,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Ger your groceries in as fast as one hour',
                textAlign: TextAlign.center,
                style: TextStyles.body.copyWith(
                  color: const Color.fromARGB(255, 203, 203, 203),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Center(
              child: Elevatedbottun(context, Login(), 'Get Started'),
            ),
          ),
        ],
      ),
    );
  }
}
