import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_notes.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNotes();
        },),);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Color(0xffFFCC80),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 16.h, bottom: 24.h, left: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 26.sp),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
                  child: Text(
                    'build your career with me',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.5), fontSize: 18.sp),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24.sp,
                  ),
                ),
              ),
              // Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 24.w),
                child: Text(
                  'May/14,2025',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
