import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_mart/Core/CommonWidgets/ElevatedBottun.dart';
import 'package:green_mart/Core/Styles/colors.dart';
import 'package:green_mart/Features/Details/widgets/checkout_bottom_sheet.dart';
import 'package:green_mart/Core/CommonWidgets/price_with_counter.dart';
import 'package:green_mart/Features/Home/data/ProductData.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.model});

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Image.network(
                    model.image,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                ),
                const Positioned(
                  top: 40,
                  left: 20,
                  child: Icon(Icons.arrow_back_ios_new_outlined),
                ),
                const Positioned(
                  top: 40,
                  right: 20,
                  child: Icon(Icons.share_rounded),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        model.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(Icons.favorite_border),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    model.quantityForPrice,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  PriceWithCounter(model: model),
                  const SizedBox(height: 25),
                  const Divider(),
                  ExpansionTile(
                    title: Text(
                      'Product Detail',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    childrenPadding: EdgeInsets.all(0),
                    tilePadding: EdgeInsets.all(0),
                    children: [
                      Text(
                        "Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart.",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),

                  // ListTile(
                  //   contentPadding: EdgeInsets
                  //       .zero, // ListTile شيل أي مسافات داخلية افتراضية جوه ال
                  //   title: const Text(
                  //     "Product Detail",
                  //     style: TextStyle(fontWeight: FontWeight.bold),
                  //   ),
                  //   trailing: const Icon(Icons.arrow_drop_down_outlined),
                  // ),
                  // const SizedBox(height: 10),
                  // const Text(
                  //   "Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart.",
                  //   style: TextStyle(color: Colors.grey),
                  // ),
                  // const SizedBox(height: 25),
                  const Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      "Nutritions",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.lightGreyColor,
                          ),
                          child: Text(
                            "100gr",
                            style: TextStyle(color: AppColors.greyColor),
                          ),
                        ),
                        const SizedBox(width: 15),
                        const Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      "Review",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 20,
                          itemBuilder: (context, _) =>
                              Icon(Icons.star, color: AppColors.Tango),
                          onRatingUpdate: (rating) {},
                        ),
                        SizedBox(width: 15),
                        Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        // padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 18),
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Elevatedbottun(
          title: 'Add To Cart',
          onPressed: () {
            showCheckoutBottomSheet(context);
          },
        ),
      ),
    );
  }
}
