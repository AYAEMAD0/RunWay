import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../core/color_app.dart';
import '../models/categories_model.dart';
import '../screen/product_screen.dart';

class ContainerHomeEnd extends StatefulWidget {
  const ContainerHomeEnd({super.key});

  @override
  State<ContainerHomeEnd> createState() => _ContainerHomeEndState();
}

class _ContainerHomeEndState extends State<ContainerHomeEnd> {
  final List<CategoriesModel> categories = [
  CategoriesModel(image: "assets/images/category/Women.png", title: "Women"),
    CategoriesModel(image: "assets/images/category/Men.png", title: "Men"),
    CategoriesModel(image: "assets/images/category/Kids.png", title: "Kids"),
    CategoriesModel(image: "assets/images/category/Health.png", title: "Health"),
    CategoriesModel(image: "assets/images/category/Deals.png", title: "Deals"),
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: const EdgeInsets.all(7),
              height: 165,
              decoration: const BoxDecoration(
                color: ColorApp.secondaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(10),
                  const Text(
                    "  Categories",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Gap(10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: List.generate(
                        categories.length,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (c)=>ProductScreen()));
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  categories[index].image,
                                  width: 65,
                                  height: 65,
                                ),
                                const Gap(10),
                                Text(
                                  categories[index].title,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            
          );
  }
}