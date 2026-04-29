import 'package:flutter/cupertino.dart';

import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(child: AddNoteForm())
    );
  }
}
