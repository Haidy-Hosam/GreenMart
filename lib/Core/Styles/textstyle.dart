import 'package:flutter/material.dart';
import 'package:green_mart/Core/Styles/colors.dart';

class TextStyles {
  static const TextStyle headline = TextStyle(
    fontSize: 48,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    // height: 24 / 48,
    color: Color.fromARGB(255, 0, 0, 0),
    
  );
  static const TextStyle title = TextStyle(
  fontSize: 24,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
  color: AppColors.blackColor,
);

static const TextStyle subtitle = TextStyle(
  fontSize: 18,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w600,
  color: AppColors.blackColor,
);

static const TextStyle body = TextStyle(
  fontSize: 16,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w400,
  color: AppColors.blackColor,
);

}
