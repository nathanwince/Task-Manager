import 'package:flutter/material.dart';

const double kNoteHeight = 126.1;
const double kNotePaddingHorizontal = 16.0;
const double kNotePaddingBottom = 8.0;
const Color kNoteBackgroundColor = Color(0xFFF1F5F9);
const Color kNoteBorderColor = Color(0xFF6C7EA0);
const Color kNoteTextColor = Colors.white;

const TextStyle kNoteLabelTextStyle = TextStyle(
  color: kNoteTextColor,
  fontSize: 16,
  fontWeight: FontWeight.bold,
  fontFamily: 'Nunito',
);

class Note extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // "Note" label with padding
        Padding(
          padding: const EdgeInsets.only(left: kNotePaddingHorizontal, bottom: kNotePaddingBottom),
          child: const Text("Note", style: kNoteLabelTextStyle),
        ),

        // Note input container
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kNotePaddingHorizontal),
          child: Container(
            width: double.infinity,
            height: kNoteHeight,
            decoration: ShapeDecoration(
              color: kNoteBackgroundColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: kNoteBorderColor),
                borderRadius: BorderRadius.circular(30),
              ),
              shadows: [
                const BoxShadow(
                  color: Color(0x66F1F5F9),
                  blurRadius: 0,
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                ),
                const BoxShadow(
                  color: Color(0x99F1F5F9),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}