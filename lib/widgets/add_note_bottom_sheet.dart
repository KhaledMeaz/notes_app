import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(hintText: 'Title',),
        CustomTextField(
          hintText: 'Content',
          maxLines: 5,
        ),
      ],
    );
  }
}
