import 'package:flutter/cupertino.dart';
import 'package:notes/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 8),
          child: NoteItem(),
        );
      },
    );
  }
}
