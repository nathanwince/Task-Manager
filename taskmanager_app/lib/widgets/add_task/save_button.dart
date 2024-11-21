import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  final VoidCallback onSave; // Callback for saving the task
  final int userId;

  const SaveButton({
    Key? key,
    required this.onSave,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSave,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFF58CC02),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            "Save Task",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
