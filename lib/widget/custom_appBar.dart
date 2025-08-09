import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/color_app.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String prefix, postfix, title;
  final void Function()? ontap;

  const CustomAppBar({
    super.key,
    required this.prefix,
    required this.title,
    required this.postfix,
    this.ontap
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:ColorApp.secondaryColor,
      scrolledUnderElevation: 0.0,
      toolbarHeight: preferredSize.height,
      leadingWidth: 0.0,
      leading: const SizedBox.shrink(),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(onTap: ontap,child: SvgPicture.asset(prefix, width: 23)),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SvgPicture.asset(postfix, width: 22),
        ],
      ),
    );
   
  }
}
