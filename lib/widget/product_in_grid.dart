import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/models/product_model.dart';

import '../core/color_app.dart';

class ProductInGrid extends StatelessWidget {
  const ProductInGrid({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          height: 255,
          decoration: BoxDecoration(
            color: ColorApp.backgroundProduct,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                Center(child: Image.asset(product.image)),
                Positioned(
                  bottom: 0,
                  right: 10,
                  left: 10,
                  child: Image.asset('assets/images/shadow.png'),
                ),
              ],
            ),
          ),
        ),
        Gap(5),
        Text(
          product.title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        Gap(3),
        Text(
          '£ ${product.price}',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
        ),
        Gap(2),
      ],
    );
  }
}
