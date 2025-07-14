import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          SizedBox(height: 32.h,),
           TextField(
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: 'Titel',
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