import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/widgets/Custom_text_field.dart';
import 'package:notes_app/widgets/constants.dart';
import 'package:notes_app/widgets/custom_botton.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: [
          CustomTextField(hintText: 'Title',),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
          SizedBox(height: 70.h,),
          CustomBotton(),
        ],
      ),
    );
  }
}
