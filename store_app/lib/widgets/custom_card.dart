import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.product});

  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 130,
            width: 220,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Color(0x149E9E9E),
                  spreadRadius: 0,
                  offset: Offset(10, 10),
                ),
              ],
            ),
            child: Card(
              color: Colors.white,
              elevation: 9,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // product.title.split(" ").take(2).join(" "),
                      product.title.substring(0, 10),
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$'
                          '${product.price.toString()}',
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(Icons.favorite, color: Colors.red),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 90,
            child: Image.network(product.image, height: 75),
          ),
        ],
      ),
    );
  }
}
