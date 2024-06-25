import 'package:e_commerce/ui/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Custom_Widget extends StatelessWidget {
  final String? quantity;

  const Custom_Widget({super.key, this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors_App.blueColor,
          borderRadius: BorderRadius.all(Radius.circular(50.r))),
      child: Row(
        children: [
          IconButton(
            iconSize: 32.sp,
            color: Colors_App.whiteColor,
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline_sharp),
          ),
          Text(quantity ?? ' '),
          IconButton(
            iconSize: 32.sp,
            color: Colors_App.whiteColor,
            onPressed: () {},
            icon: Icon(Icons.remove_circle_outline),
          ),
        ],
      ),
    );
  }
}
