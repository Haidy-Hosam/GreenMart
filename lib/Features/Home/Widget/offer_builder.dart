import 'package:flutter/material.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';
import 'package:green_mart/Features/Home/data/ProductData.dart';
import 'package:green_mart/Features/Home/Widget/item_card.dart';

class OfferBuilder extends StatelessWidget {
  const OfferBuilder({
    super.key,
  });

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
        SizedBox(
          height:
              225.1, // طول ال listview ككل .. الي هو انا بديها مساحه قد ايه من الشاشه
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ItemCard(product: offers[index]);
            },
            separatorBuilder: (context, index) => SizedBox(width: 12),
            itemCount: offers.length,
          ),
        ),
      ],
    );
  }
}
