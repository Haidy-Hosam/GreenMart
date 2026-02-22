import 'package:flutter/material.dart';
import 'package:green_mart/Core/Constants/app_image.dart';
import 'package:green_mart/Core/Styles/colors.dart';
import 'package:green_mart/Core/Styles/textstyle.dart';
import 'package:green_mart/Features/Home/data/ProductData.dart';

class itemcard extends StatelessWidget {
  const itemcard({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100, // انت هنا غير مؤثر بالمره لان شغلنا افقي حاليا .. و الطول في الافقي بيتحدد من الاب
      // ولو عايزاه ياثر وقتها افصل بين الكونتينر و الليست فيو باي حاجه .. كولوم مثلا و وقتها هبقي حره في الهايت لان كده الكولوم اللي واخد ال 120
      width: 156.99,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(16.3),
        border: Border.all(color: AppColors.borderColor, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.network(
                  product.image,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.image_not_supported);
                  },
                ),
              ),
            ),
            SizedBox(height: 12),
            Text(
              product.name,
              style: TextStyles.caption1.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              product.quantityForPrice,
              style: TextStyles.subtitle.copyWith(
                color: AppColors.greyColor,
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${product.price}',
                  style: TextStyles.caption1.copyWith(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FloatingActionButton(
                heroTag: UniqueKey(), // عشان كل واحد فيهم يبقي ليه هيرو تاج خاص بيه
                  onPressed: () {},
                  mini: true,
                  elevation: 0,
                  backgroundColor: AppColors.primaryColor,
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
