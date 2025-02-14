import 'package:air_travel_app/utils/constants.dart';
import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  const Textbox({
    super.key,
    required this.text,
    required this.size,
     this.color=Colors.white,
     this.weight=FontWeight.bold,
  });
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color:color,
        fontSize: size,
        fontFamily: "Urbanist",
        fontWeight: weight,
      ),
    );
  }
}
