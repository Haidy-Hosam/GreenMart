import 'package:flutter/material.dart';
import 'package:green_mart/Core/Styles/colors.dart';
import 'package:green_mart/Features/Home/data/ProductData.dart';

class PriceWithCounter extends StatelessWidget {
  const PriceWithCounter({
    super.key,
    required this.model,
  });

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.remove),
            const SizedBox(width: 15),
            Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.greyColor,
                ),
              ),
              child: const Text("1"),
            ),
            const SizedBox(width: 15),
            const Icon(Icons.add, color: Colors.green),
          ],
        ),
        Text(
          "\$${model.price}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}