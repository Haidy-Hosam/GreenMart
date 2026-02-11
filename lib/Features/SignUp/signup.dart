import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/Core/CommonWidgets/ElevatedBottun.dart';
import 'package:green_mart/Core/Constants/app_image.dart';
import 'package:green_mart/Core/Styles/colors.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';
import 'package:green_mart/Features/Number/number.dart';
import 'package:green_mart/Features/Welcome/welcome.dart';
import 'package:green_mart/Features/login/login.dart';

class Sign_Up extends StatelessWidget {
  const Sign_Up({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (_) => Welcome()),
            (route) => false,
          ),
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.64),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(AppImage.coloerdcarrotsvg),
              ),
              SizedBox(height: 40),
              Text("Sign Up", style: TextStyles.title),
              Text(
                "Enter your credentials to continue",
                style: TextStyles.caption1.copyWith(color: AppColors.greyColor),
              ),
              SizedBox(height: 30),
              Text(
                "Name",
                style: TextStyles.body.copyWith(
                  color: AppColors.greyColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.email),
                  hintText: 'Haidy Hosam El-Dien',
                  hintStyle: TextStyles.caption1.copyWith(
                    color: AppColors.greyColor,
                  ),
                  fillColor: AppColors.lightGreyColor,
                  filled: true,
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
              SizedBox(height: 20),
              Text(
                "Email",
                style: TextStyles.body.copyWith(
                  color: AppColors.greyColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.email),
                  hintText: 'example@gmail.com',
                  hintStyle: TextStyles.caption1.copyWith(
                    color: AppColors.greyColor,
                  ),
                  fillColor: AppColors.lightGreyColor,
                  filled: true,
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
              SizedBox(height: 20),
              Text(
                "Password",
                style: TextStyles.body.copyWith(
                  color: AppColors.greyColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: '************',
                  hintStyle: TextStyles.caption1.copyWith(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: AppColors.lightGreyColor,
                  filled: true,
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
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(50, 30),
                  ),
                  onPressed: () => {},
                  child: Text(
                    'Forget Password ?',
                    style: TextStyles.body.copyWith(
                      color: AppColors.greyColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Elevatedbottun(context, Number(), 'Sign Up'),
              SizedBox(height: 7),
              // Align(alignment : Alignment.center, child: Text("Don't have an account? Sign Up", style: TextStyles.body.copyWith(color: AppColors.greyColor),))
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ? ",
                    style: TextStyles.body.copyWith(color: AppColors.greyColor, fontWeight: FontWeight.w600 , fontSize: 15,),
                  ),
                  TextButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      ),
                    },
                    child: Text(
                      'Login',
                      style: TextStyles.body.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
