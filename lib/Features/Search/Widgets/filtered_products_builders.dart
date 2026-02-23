import 'package:flutter/material.dart';
import 'package:green_mart/Features/Home/data/ProductData.dart';
import 'package:green_mart/Features/Home/Widget/item_card.dart';

class FilteredProductsBuilders extends StatelessWidget {
  const FilteredProductsBuilders({super.key , required this.allProducts});

  final List<ProductModel> allProducts;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // كل صف فيه 2 كارد
        crossAxisSpacing: 10, // العرض
        mainAxisSpacing: 10,
        // mainAxisExtent: 250, // الارتفاع
        childAspectRatio:
            0.7,      ),
      itemCount: allProducts.length,
      itemBuilder: (context, index) {
        return ItemCard(product: allProducts[index]);
      },
    );
  }
}
