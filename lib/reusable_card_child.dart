import 'package:flutter/material.dart';

const iconSize = 80.0;
const containerFontSize = 15.0;

class ReusableCardChild extends StatelessWidget {
  ReusableCardChild({@required this.icon, @required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: containerFontSize,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
