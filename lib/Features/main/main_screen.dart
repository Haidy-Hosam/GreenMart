import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/Core/CommonWidgets/custom_svg_picture.dart';
import 'package:green_mart/Core/Constants/app_image.dart';
import 'package:green_mart/Core/Styles/colors.dart';
import 'package:green_mart/Features/Explore/Page/explore_screen.dart';
import 'package:green_mart/Features/Home/Page/home_screen.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreemState();
}

class _MainAppScreemState extends State<MainAppScreen> {
  int _currentIndex = 0;
final List<Widget> _screens = [
  HomeScreen(),
  ExploreScreen(),
  Center(child: Text('Cart Screen')),
  Center(child: Text('Favorite Screen')),
  Center(child: Text('Profile Screen')),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImage.storesvg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImage.storesvg,
              color: AppColors.primaryColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImage.exploresvg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImage.exploresvg,
              color: AppColors.primaryColor,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImage.cartsvg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImage.cartsvg,
              color: AppColors.primaryColor,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImage.heartsvg,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImage.heartsvg,
              color: AppColors.primaryColor,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImage.user,
              colorFilter: ColorFilter.mode(
                const Color.fromARGB(255, 0, 0, 0),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: CustomSvgPicture(
              path: AppImage.user,
              color: AppColors.primaryColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
