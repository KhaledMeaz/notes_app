import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style: TextStyle(color: Colors.white,fontSize: 28.sp),),
        Spacer(),
        CustomSearchIcon(
          icon: icon,
        ),
      ] 
    );
  }
}

