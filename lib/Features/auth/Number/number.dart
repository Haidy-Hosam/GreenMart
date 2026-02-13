import 'package:flutter/material.dart';
import 'package:green_mart/Core/CommonWidgets/ElevatedBottun.dart';
import 'package:green_mart/Core/CommonWidgets/custom_text_form_field.dart';
import 'package:green_mart/Core/Styles/colors.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';
import 'package:green_mart/Features/auth/Verification/verification.dart';

class Number extends StatelessWidget {
  const Number({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.backgroundColor),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(22.64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter your mobile number",
                style: TextStyles.title.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "We need to verify you. We will send you a one time verification code. ",
                style: TextStyles.title.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  color: AppColors.greyColor,
                ),
              ),
              SizedBox(height: 30),
              CustomTextFormField(
                hintText: '01xxxxxxxxxx',
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 30),
              Elevatedbottun(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Verification()),
                );
              }, title: 'Next'),
            ],
          ),
        ),
      ),
    );
  }
}
