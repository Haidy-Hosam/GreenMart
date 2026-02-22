import 'package:flutter/material.dart';
import 'package:green_mart/Core/Styles/colors.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';
import 'package:green_mart/Features/Explore/data/CategoryModel.dart';

class ExploreCards extends StatelessWidget {
  const ExploreCards({super.key, required this.category});

final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.99,
      decoration: BoxDecoration(
          color: category.backgroundColor,
        borderRadius: BorderRadius.circular(16.3),
        border: Border.all(color: AppColors.borderColor, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  category.image,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.image_not_supported);
                  },
                ),
              ),
            ),
            SizedBox(height: 12),
            Center(
              child: Text(
                category.name,
                style: TextStyles.caption1.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
