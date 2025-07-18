import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});
final void Function()? onPressed;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
      width: 46.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: Colors.white.withOpacity(.07)),
      child:  Center(
        child: IconButton(
          onPressed: onPressed,
         icon:  Icon( icon,
         size: 28.sp,
         color: Colors.white,
        ),
        ),
      ),
    );
  }
}
