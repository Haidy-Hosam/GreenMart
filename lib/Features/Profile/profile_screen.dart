import 'package:flutter/material.dart';
import 'package:green_mart/Core/Constants/app_image.dart';
import 'package:green_mart/Core/Styles/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [

              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      AppImage.myPhoto,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Haidy Hosam El-Dien',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'haidyhosam93@gmail.com',
                          style: TextStyle(
                            color: AppColors.greyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

               SizedBox(height: 25),
               Divider(),

              Expanded(
                child: ListView(
                  children: const [
                    ProfileItem(title: "Orders", icon: Icons.shopping_bag_outlined),
                    ProfileItem(title: "My Details", icon: Icons.person_outline),
                    ProfileItem(title: "Delivery Address", icon: Icons.location_on_outlined),
                    ProfileItem(title: "Payment Methods", icon: Icons.credit_card_outlined),
                    ProfileItem(title: "Promo Code", icon: Icons.card_giftcard_outlined),
                    ProfileItem(title: "Notifications", icon: Icons.notifications_none),
                    ProfileItem(title: "Help", icon: Icons.help_outline),
                    ProfileItem(title: "About", icon: Icons.info_outline),
                  ],
                ),
              ),

              /// 🔹 Logout Button
              Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.logout, color: Colors.green),
                      SizedBox(width: 8),
                      Text(
                        "Log Out",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const ProfileItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        ),
        const Divider(height: 1),
      ],
    );
  }
}