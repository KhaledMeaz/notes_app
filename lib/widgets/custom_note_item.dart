import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_notes.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  
  final NoteModel note;
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
          color: Color(note.color),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 16.h, bottom: 24.h, left: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 26.sp),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
                  child: Text(
                    note.subtitle,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.5), fontSize: 18.sp),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
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
                  note.date,
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
