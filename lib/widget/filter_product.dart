import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class FilterProduct extends StatelessWidget {
  const FilterProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black12),
            ),
            child: Row(
              children: [
                Gap(5),
                Text(
                  "Sort by",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Gap(7),
                SvgPicture.asset('assets/svgs/select.svg'),
                Spacer(),
                SvgPicture.asset('assets/svgs/filter.svg'),
                Gap(10),
                Text(
                  "Filter",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Gap(10),
                SvgPicture.asset('assets/svgs/grid.svg'),
                Gap(10),
                SvgPicture.asset('assets/svgs/groups.svg'),
                Gap(7),
              ],
            ),
          );
  }
}