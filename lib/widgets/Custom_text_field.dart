import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines=1});
     final String hintText;
     final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
           TextField(
            cursorColor: kPrimaryColor,
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: kPrimaryColor),
              border: OutLineInputBorder(),
              enabledBorder: OutLineInputBorder(),
              focusedBorder: OutLineInputBorder(kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder OutLineInputBorder([color]) {
    return OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(color: color ?? Colors.white),
            );
  }
}