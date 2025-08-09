import 'package:flutter/material.dart';
import 'package:runway/widget/bottom_sheet.dart';
import '../core/color_app.dart';
import '../models/product_model.dart';
import '../widget/custom_appBar.dart';
import '../widget/filter_product.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.product});
  final ProductModel product;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet();
    });
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      barrierColor: Colors.transparent,
      builder: (context) {
        return DraggableScrollableSheet(
            initialChildSize: 0.17,
            minChildSize: 0.17,
            maxChildSize: 0.32,
            expand: false,
            builder: (BuildContext context, ScrollController scrollController) {
              return ButtomSheet(scrollController: scrollController, product: widget.product);
              
         });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundProduct,
      appBar: CustomAppBar(
        prefix: 'assets/svgs/arrow-left.svg',
        title: 'Men',
        postfix: "assets/svgs/cart.svg",
        ontap: () => Navigator.pop(context),
      ),
      body: Column(
        children: [
          FilterProduct(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                SizedBox(
                  width: 170,
                  height: 400,
                  child: Image.asset(widget.product.image, ),
                ),
                Positioned(
                  bottom: 13,
                  right: 10,
                  left: 10,
                  child: Image.asset('assets/images/shadow.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}






