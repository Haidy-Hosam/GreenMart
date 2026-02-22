import 'dart:ui';
import 'package:green_mart/Core/Constants/app_image.dart';

class CategoryModel {
  final String id;
  final String name;
  final String image;
  final Color backgroundColor;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
    required this.backgroundColor,
  });
}

List<CategoryModel> categories = [
  CategoryModel(
    id: '1',
    name: 'Fruits & Vegetable',
    image: AppImage.freshFruits,
    backgroundColor: Color(0xFFE8F5E9),
  ),
  CategoryModel(
    id: '2',
    name: 'Meat & Fish',
    image: AppImage.meatFish,
    backgroundColor: Color(0xFFFFF3E0),
  ),
  CategoryModel(
    id: '4',
    name: 'Beverages',
    image: AppImage.beverages,
    backgroundColor: Color.fromARGB(255, 243, 233, 255),
  ),
  CategoryModel(
    id: '3',
    name: 'Bakery',
    image: AppImage.bakerySnacks,
    backgroundColor: Color(0xFFFFEBEE),
  ),
  CategoryModel(
    id: '5',
    name: 'Cooking Oil',
    image: AppImage.cookingOil,
    backgroundColor: Color(0xFFFFF8E1),
  ),
  CategoryModel(
    id: '6',
    name: 'Dairy & Eggs',
    image: AppImage.dairyEggs,
    backgroundColor: Color(0xFFE0F7FA),
  ),
  CategoryModel(
    id: '7',
    name: 'Bakery',
    image: AppImage.bakerySnacks,
    backgroundColor: Color(0xFFFFEBEE),
  ),
  CategoryModel(
    id: '8',
    name: 'Cooking Oil',
    image: AppImage.cookingOil,
    backgroundColor: Color(0xFFE8F5E9),
  ),
];
