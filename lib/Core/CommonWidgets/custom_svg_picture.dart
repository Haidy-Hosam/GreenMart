import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/Core/Styles/colors.dart';

class CustomSvgPicture extends StatelessWidget {
  const CustomSvgPicture({
    super.key,
    required this.path,
    this.color,
    this.height = 24,
    this.width = 24,
  });
  final String path;
  final Color? color;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      colorFilter: ColorFilter.mode(
        color ?? AppColors.primaryColor,
        BlendMode.srcIn,
      ),
      height: height,
      width: width,
    );
  }
}
