import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/Core/CommonWidgets/ElevatedBottun.dart';
import 'package:green_mart/Core/CommonWidgets/custom_pass_form_field.dart';
import 'package:green_mart/Core/CommonWidgets/custom_text_form_field.dart';
import 'package:green_mart/Core/Constants/app_image.dart';
import 'package:green_mart/Core/Styles/colors.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';
import 'package:green_mart/Features/Number/number.dart';
import 'package:green_mart/Features/SignUp/signup.dart';
import 'package:green_mart/Features/Welcome/welcome.dart';

// to handle input validations :
// 1) wrap with Form widget
// 2) create formKey and pass it to Form widget
// 3) add validators for each field
// 4) check if formKey.currentState!.validate() is true when onPressed is called


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
  final formKey = GlobalKey<FormState>();
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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.64),
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(AppImage.coloerdcarrotsvg),
                  ),
                  SizedBox(height: 40),
                  Text("Login", style: TextStyles.title),
                  Text(
                    "Enter your credentials to continue",
                    style: TextStyles.caption1.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Email",
                    style: TextStyles.body.copyWith(
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
              
                  CustomTextFormField(
                    hintText: "Enter your email",
                    posticon: Icon(Icons.email_outlined),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Your Email';
                       }
                       else if(value.contains('@') == false){
                        return 'Please enter a valid email';
                       }
                      return null;
                    },
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
              
                  CustomPassFormField(
                    hintText: "Enter your password",
                    posticon: Icon(Icons.lock_outline),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Your Password';
                       }
                      return null;
                    },
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
                  Elevatedbottun(title: 'Login', onPressed: () {
                    if (formKey.currentState!.validate()) {
                    }
                  }),
                  SizedBox(height: 7),
                  // Align(alignment : Alignment.center, child: Text("Don't have an account? Sign Up", style: TextStyles.body.copyWith(color: AppColors.greyColor),))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account ? ",
                        style: TextStyles.body.copyWith(
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sign_Up()),
                          ),
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyles.body.copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
