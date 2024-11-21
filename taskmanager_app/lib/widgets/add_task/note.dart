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
  final ValueChanged<String>? onTitleChanged; // Callback for title change
  final ValueChanged<String>? onDescriptionChanged; // Callback for description change

  const Note({
    Key? key,
    this.onTitleChanged,
    this.onDescriptionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // "Title" field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kNotePaddingHorizontal),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Title',
              labelStyle: kNoteLabelTextStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: kNoteBorderColor),
              ),
            ),
            onChanged: onTitleChanged,
          ),
        ),
        const SizedBox(height: kNotePaddingBottom),

        // "Description" field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kNotePaddingHorizontal),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Description',
              labelStyle: kNoteLabelTextStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: kNoteBorderColor),
              ),
            ),
            maxLines: 3,
            onChanged: onDescriptionChanged,
          ),
        ),
      ],
    );
  }
}
