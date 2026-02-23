import 'package:flutter/material.dart';
import 'package:green_mart/Core/CommonWidgets/custom_text_form_field.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';
import 'package:green_mart/Features/Home/data/ProductData.dart';
import 'package:green_mart/Features/Search/Widgets/filtered_products_builders.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
 String searchKey = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 0.0,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Hero(
            tag: 'search',
            child: Material(
              color: Colors.transparent,
              child: CustomTextFormField(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Store',
                onChanged: (value) {
                  setState(() {
                    searchKey = value;
                  });
                },
                // هنا المفروض تفتح صفحة البحث
              ),
            ),
          ),
        ),
        actions: [SizedBox(width: 20)],
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FilteredProductsBuilders(allProducts: getProductsByName(searchKey)),
      ),
    );
  }
}
