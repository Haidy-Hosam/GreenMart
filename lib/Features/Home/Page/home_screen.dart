import 'package:flutter/material.dart';
import 'package:green_mart/Core/HelperMethods/navigations.dart';
import 'package:green_mart/Features/Home/Widget/all_products_builders.dart';
import 'package:green_mart/Features/Home/Widget/best_silling_builder.dart';
import 'package:green_mart/Core/CommonWidgets/custom_svg_picture.dart';
import 'package:green_mart/Core/CommonWidgets/custom_text_form_field.dart';
import 'package:green_mart/Core/Constants/app_image.dart';
import 'package:green_mart/Features/Home/Widget/offer_builder.dart';
import 'package:green_mart/Features/Search/Pages/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        // عشان اكبر ال height بتاع ال appbar
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          centerTitle: true,
          toolbarHeight: 100,
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CustomSvgPicture(
              path: AppImage.logosvg,
              height: 50,
              width: 40,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Pushto(context, SearchScreen());
                  },  
                  child: Hero(
                    tag: 'search',
                    child: Material(
                      child: CustomTextFormField(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search Store',
                        enabled: false, // عشان لما تضغط عليها متفتحش الكيبورد
                          // هنا المفروض تفتح صفحة البحث
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                OfferBuilder(),
                BestSilling(),
                SizedBox(height: 12),
                AllProductsBuilders(),  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
