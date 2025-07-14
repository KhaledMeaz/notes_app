import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add,color: Colors.black,),backgroundColor: Color.fromARGB(255, 126, 246, 228),
        shape: const CircleBorder(),
      ),
      body: const NotesViewBody(),
    );
  }
}


