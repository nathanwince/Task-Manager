import 'package:flutter/material.dart';
import 'firstcheckout.dart'; // Import the FirstCheckout widget
import 'secondcheckout.dart'; // Import the SecondCheckout widget

class CheckOutGridWidget extends StatelessWidget {
  final int userId;

  const CheckOutGridWidget({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // First Checkout Section
        FirstCheckout(),

        const SizedBox(height: 16), // Add spacing between sections

        // Second Checkout Section
        SecondCheckout(userId: userId), // Pass userId to SecondCheckout
      ],
    );
  }
}
