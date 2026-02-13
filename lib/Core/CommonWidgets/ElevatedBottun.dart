import 'package:flutter/material.dart';
import 'package:green_mart/Core/Styles/colors.dart';

class Elevatedbottun extends StatelessWidget {
  const Elevatedbottun({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Color color = AppColors.primaryColor;
    Color textcolor = AppColors.backgroundColor;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          color: textcolor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
