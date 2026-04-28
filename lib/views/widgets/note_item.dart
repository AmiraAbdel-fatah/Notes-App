import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EditNoteView();
          }));
        },
        child: Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Color(0xFFFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: GoogleFonts.poppins(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                "Build Your Career with Amira",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.black.withOpacity(.5),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, size: 30, color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 24, top: 24),
            child: Text(
              "May 5 , 2026",
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.black.withOpacity(.5),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
        ));
  }
}
