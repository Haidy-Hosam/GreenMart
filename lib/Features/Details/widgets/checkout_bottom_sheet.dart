import 'package:flutter/material.dart';
import 'package:green_mart/Core/CommonWidgets/ElevatedBottun.dart';
import 'package:green_mart/Core/Styles/colors.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';

void showCheckoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    enableDrag: false,
    isDismissible: false,
    isScrollControlled: true,
    useSafeArea: true,
    backgroundColor: AppColors.backgroundColor,
    builder: (context) {
      return const CheckoutBottomSheet();
    },
  );
}

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Checkout', style: TextStyles.subtitle),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),

            const Divider(),

            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                "Delivery",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Select Method",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ),

            const Divider(),

            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                "Payment",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/0/04/Mastercard-logo.png",
                    width: 30,
                  ),
                  const SizedBox(width: 5),
                  const Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ),

            const Divider(),

            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                "Promo Code",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Pick discount",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ),

            const Divider(),

            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                "Total Cost",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Text(
                "\$13.97",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),

            const Divider(),
            const SizedBox(height: 10),

             RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.grey),
                children: [
                  TextSpan(text: "By placing an order you agree to our "),
                  TextSpan(
                    text: "Terms And Conditions",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Elevatedbottun(
              title: 'Place Order',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}