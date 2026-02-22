import 'package:flutter/material.dart';
import 'package:green_mart/Core/CommonWidgets/custom_text_form_field.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';
import 'package:green_mart/Features/Explore/Widgets/explore_cards_builder.dart';


class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            'Find Products',
            style: TextStyles.title.copyWith(fontWeight: FontWeight.w800),
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextFormField(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Store',
              ),
                SizedBox(height: 20),
              ExploreCardsBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
