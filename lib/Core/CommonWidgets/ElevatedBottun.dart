import 'package:flutter/material.dart';
import 'package:green_mart/Core/Styles/colors.dart';

Widget Elevatedbottun(BuildContext context, Widget newpage, String title) {
  Color color = AppColors.primaryColor;
  Color textcolor = AppColors.backgroundColor;
  return ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: color,minimumSize: const Size(double.infinity, 50), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    onPressed: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => newpage),
      );
    },
    child: Text(
      title,
      style: TextStyle(
        color: textcolor,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
