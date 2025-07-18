import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 38.r,
      backgroundColor: Colors.blue,
    );
  }
}

class ColorsLstView extends StatelessWidget {
  const ColorsLstView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2.h,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const ColorItem();
          }),
    );
  }
}
