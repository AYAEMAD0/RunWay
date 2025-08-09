import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:runway/models/product_model.dart';
import '../core/color_app.dart';

class ButtomSheet extends StatelessWidget {
  const ButtomSheet({
    super.key,
    required this.scrollController,
    required this.product,
  });
  final ScrollController scrollController;
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListView(
          controller: scrollController,
          children: [
            Gap(5),
            Center(
              child: Container(
                height: 6,
                width: 42,
                decoration: BoxDecoration(
                  color: ColorApp.containerColor,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            Gap(15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Gap(10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '£ ${product.price}',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
              ),
            ),
            Gap(15),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                width: 1.3,
                color:ColorApp.backgroundProduct ),
                borderRadius:BorderRadius.circular(7)),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(children: [
                    Gap(5),
                    Text("Select color",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                    Gap(5),
                    SvgPicture.asset('assets/svgs/select.svg'),  
                    ],),
                 Container(width: 2,height: 40,color: ColorApp.backgroundProduct,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Select size",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                    Gap(8),
                    SvgPicture.asset('assets/svgs/select.svg'),
                    Gap(5),
                   ],),
                ],),
              ),
              
            ),
            Gap(20),
            Container(
              padding: EdgeInsets.all(5),
              height: 45,
              decoration: BoxDecoration(
                color:ColorApp.blackColor ,
                borderRadius:BorderRadius.circular(7)),
                child: Center(child: Text('ADD TO BAG',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: ColorApp.secondaryColor),)),),
          Gap(5),
          ],
        ),
      ),
    );
  }
}
