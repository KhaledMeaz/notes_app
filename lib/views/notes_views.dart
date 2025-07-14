import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),context: context, builder: (context){
            return AddNoteBottomSheet();
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Color.fromARGB(255, 126, 246, 228),
        shape: const CircleBorder(),
      ),
      body: const NotesViewBody(),
    );
  }
}

