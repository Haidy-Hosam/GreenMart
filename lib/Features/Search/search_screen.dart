import 'package:flutter/material.dart';
import 'package:green_mart/Core/CommonWidgets/custom_text_form_field.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(Icons.arrow_back_ios),
        // ),
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text('Find Products', style: TextStyles.title .copyWith(fontWeight: FontWeight.w800)),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:8, horizontal: 20),
        child: CustomTextFormField(
          prefixIcon: Icon(Icons.search),
          hintText: 'Search Store',
          // هنا المفروض تفتح صفحة البحث
        ),
      ),
    );
  }
}
