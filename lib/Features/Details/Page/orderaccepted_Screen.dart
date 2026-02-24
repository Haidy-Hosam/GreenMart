import 'package:flutter/material.dart';
import 'package:green_mart/Core/CommonWidgets/ElevatedBottun.dart';
import 'package:green_mart/Core/Constants/app_image.dart';
import 'package:green_mart/Core/Styles/colors.dart';

class OrderacceptedScreen extends StatelessWidget {
  const OrderacceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImage.orderaccepted),
            SizedBox(height: 30),
            Text(
              'Your Order has been \naccepted',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 20),
            Text(
              'Your items has been placcd and is on\n it’s way to being processed',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal , color: AppColors.greyColor),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 0),
              child: Elevatedbottun(title: 'Go To Home', onPressed: () => {}),
            ),
          ],
        ),
      ),
    );
  }
}
