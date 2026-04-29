import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {


  final String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Edit Note', icon: Icons.check,
            onPressed: () {

            },),
          SizedBox(height: 50),

          CustomTextField(hint: "Title"),
          SizedBox(height: 20,),
          CustomTextField(hint: "Content", maxLines: 5,)
        ],
      ),
    );
  }
}
