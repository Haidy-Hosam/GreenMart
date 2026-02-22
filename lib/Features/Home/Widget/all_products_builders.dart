import 'package:flutter/material.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';
import 'package:green_mart/Features/Home/data/ProductData.dart';
import 'package:green_mart/Features/Home/Widget/item_card.dart';

class AllProductsBuilders extends StatelessWidget {
  const AllProductsBuilders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Exclusive Offer',
              style: TextStyles.title.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Text(
                  'See All',
                  style: TextStyles.caption1.copyWith(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(), // اقفل الاسكرول
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10, // العرض
            mainAxisSpacing: 10,
            // mainAxisExtent: 250, // الارتفاع
            childAspectRatio:
                0.7, // نسبة العرض إلى الارتفاع من الاخر تخليه ريسبونسف مع الشاشه
            // و عشان كده علقت الmainAxisExtent .. بحيث ان حجم الكارد ميبقاش ثابت و يتغير حسب حجم الشاشه
          ),
          itemCount: allProducts.length,
          itemBuilder: (context, index) {
            return itemcard(product: allProducts[index]);
          },
        ),
      ],
    );
  }
}
