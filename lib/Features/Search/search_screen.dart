import 'package:flutter/material.dart';
import 'package:green_mart/Core/CommonWidgets/custom_text_form_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomTextFormField(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search Store',
        // هنا المفروض تفتح صفحة البحث
      ),
    );
  }
}
