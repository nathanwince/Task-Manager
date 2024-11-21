import 'package:flutter/material.dart';

const double kNotePaddingHorizontal = 16.0;
const double kNotePaddingVertical = 10.0;
const double kNoteSpacing = 12.0;
const Color kNoteBackgroundColor = Color(0xFFF1F5F9);
const Color kNoteBorderColor = Color(0xFF6C7EA0);
const Color kNoteHintTextColor = Color(0xFF6C7EA0);

const TextStyle kNoteLabelTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
  fontWeight: FontWeight.bold,
  fontFamily: 'Nunito',
);

const TextStyle kNoteInputTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 14,
  fontFamily: 'Nunito',
);

class Note extends StatelessWidget {
  final Function(String) onTitleChanged; // Callback to parent for title changes
  final Function(String) onDescriptionChanged; // Callback to parent for description changes

  const Note({
    Key? key,
    required this.onTitleChanged,
    required this.onDescriptionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title Label
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kNotePaddingHorizontal),
          child: const Text("Task Title", style: kNoteLabelTextStyle),
        ),
        const SizedBox(height: kNoteSpacing),

        // Title Input Field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kNotePaddingHorizontal),
          child: TextField(
            onChanged: onTitleChanged, // Notify parent on title change
            style: kNoteInputTextStyle,
            decoration: InputDecoration(
              hintText: "Enter the task title",
              hintStyle: const TextStyle(color: kNoteHintTextColor),
              filled: true,
              fillColor: kNoteBackgroundColor,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: kNoteBorderColor),
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kNoteBorderColor),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kNoteBorderColor, width: 2.0),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        const SizedBox(height: kNoteSpacing * 2),

        // Description Label
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kNotePaddingHorizontal),
          child: const Text("Task Description", style: kNoteLabelTextStyle),
        ),
        const SizedBox(height: kNoteSpacing),

        // Description Input Field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kNotePaddingHorizontal),
          child: TextField(
            onChanged: onDescriptionChanged, // Notify parent on description change
            style: kNoteInputTextStyle,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: "Enter task description (optional)",
              hintStyle: const TextStyle(color: kNoteHintTextColor),
              filled: true,
              fillColor: kNoteBackgroundColor,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: kNoteBorderColor),
                borderRadius: BorderRadius.circular(8),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kNoteBorderColor),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kNoteBorderColor, width: 2.0),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
