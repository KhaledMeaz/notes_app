import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, this.onTap, this.isLoading = false});
final void Function()? onTap;
final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45.h,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: isLoading? SizedBox(height: 24.h,width: 24.w,child: const CircularProgressIndicator(color: Colors.black,)) : Text(
            'Add',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
