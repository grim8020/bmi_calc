import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // can delete key constructor and create own constructor
  // const ReusableCard({
  //   Key key, //key
  // }) : super(key: key);

  ReusableCard({@required this.color, this.cardChild});
  final Widget cardChild;
  final Color
      color; //cannot be a const because the color is assigned when ReusableCard is created

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color, //color should be in decoration when available
      ),
    );
  }
}
