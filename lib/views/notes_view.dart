import 'package:flutter/material.dart';
import 'package:notes/widgets/add_note_bottom_sheet.dart';
import 'package:notes/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AddNoteBottomSheet();
        },
        backgroundColor: Colors.cyan,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Icon(Icons.add, size: 30, color: Colors.black,),
      ),
      body: NotesViewBody(),
    );
  }
}
