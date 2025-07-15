import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_view_body.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditViewBody(),
    );
  }
}

