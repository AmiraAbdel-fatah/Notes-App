import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 50),

          CustomTextField(hint: "Title"),
          SizedBox(height: 20,),
          CustomTextField(hint: "Content", maxLines: 5,)
        ],
      ),
    );
  }
}
