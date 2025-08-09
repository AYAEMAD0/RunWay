import 'package:flutter/material.dart';
import 'package:runway/widget/product_in_grid.dart';
import '../models/product_model.dart';
import '../widget/custom_appBar.dart';
import '../widget/filter_product.dart';
import 'product_details_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<ProductModel> product = [
    ProductModel(
      title: 'Top man black',
      image: 'assets/images/models/model1.png',
      price: 20,
    ),
    ProductModel(
      title: 'Deep gray essential',
      image: 'assets/images/models/model2.png',
      price: 25,
    ),
 ProductModel(
      title: 'Top man',
      image: 'assets/images/models/model4.png',
      price: 60,
    ),
    ProductModel(
      title: 'Gray coat and white T-shirt',
      image: 'assets/images/models/model3.png',
      price: 50,
    ),

   
    ProductModel(
      title: 'Top man black Trousers',
      image: 'assets/images/models/model6.png',
      price: 46,
    ),

    ProductModel(
      title: 'white coat and white T-shirt',
      image: 'assets/images/models/model5.png',
      price: 30,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        prefix: 'assets/svgs/arrow-left.svg',
        title: 'Men',
        postfix: "assets/svgs/cart.svg",
        ontap: ()=>Navigator.pop(context),
      ),
      body: Column(
        children: [
          FilterProduct(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 /5.8 ,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 1,
                ),
                itemCount: product.length,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (c)=>ProductDetailsScreen(product: product[index])));
                    },
                    child: ProductInGrid(product: product[index]));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
