import 'package:flutter/material.dart';

class LogoutButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 382,
      height: 63,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 382,
              height: 63,
              decoration: ShapeDecoration(
                color: Color(0x66B23737),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            left: 156,
            top: 21,
            child: SizedBox(
              width: 70,
              height: 18,
              child: Text(
                'Logout',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE32E2E),
                  fontSize: 20,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}