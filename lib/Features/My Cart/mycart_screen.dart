import 'package:flutter/material.dart';
import 'package:green_mart/Core/CommonWidgets/ElevatedBottun.dart';
import 'package:green_mart/Core/CommonWidgets/price_with_counter.dart';
import 'package:green_mart/Features/Home/data/ProductData.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = allProducts.take(4).toList(); 

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: products.length,
              separatorBuilder: (_, _) =>  Divider(height: 30),
              itemBuilder: (context, index) {
                final product = products[index];

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      product.image,
                      width: 70,
                      height: 70,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 15),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            product.quantityForPrice,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 10),

                          PriceWithCounter(model: product,)
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),
                    const Icon(Icons.close, color: Colors.grey)
                  ],
                );
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
            child: Elevatedbottun(title: 'Go to Checkout' , onPressed: () => {}),
          )
        ],
      ),
    );
  }
}

