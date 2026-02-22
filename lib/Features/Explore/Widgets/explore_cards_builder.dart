import 'package:flutter/material.dart';
import 'package:green_mart/Features/Explore/Widgets/explore_cards.dart';
import 'package:green_mart/Features/Explore/data/CategoryModel.dart';

class ExploreCardsBuilder extends StatelessWidget {
  const ExploreCardsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(), // اقفل الاسكرول
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // كل صف فيه 2 كارد
        crossAxisSpacing: 10, // العرض
        mainAxisSpacing: 10,
        // mainAxisExtent: 250, // الارتفاع
        childAspectRatio:
            1,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return ExploreCards(category: categories[index]);
      },
    );
  }
}