import 'package:flutter/material.dart';

class DateDisplay extends StatelessWidget {
  final String date;

  const DateDisplay({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Today's Date",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            date,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}