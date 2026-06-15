import 'package:flutter/material.dart';

class DotDesign extends StatelessWidget {
  const DotDesign({super.key, required this.colorscircle, required this.colorsline, required this.widthcircle, required this.widthligne});

  final Color colorscircle;
  final Color colorsline;
  final double widthcircle;
  final double widthligne;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(16.0, 16.0, 2.0, 0),
          width: widthcircle,
          height: 13.37,
          decoration: BoxDecoration(
            color: colorscircle,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(2.0, 16.0, 2.0, 0),
          width: widthcircle,
          height: 13.37,
          decoration: BoxDecoration(
            color: colorscircle,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(2.0, 16.0, 2.0, 0),
          width: widthcircle,
          height: 13.37,
          decoration: BoxDecoration(
            color: colorscircle,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(2.0, 16.0, 2.0, 0),
          width: widthligne,
          height: 13.37,
          decoration: BoxDecoration(
            color: colorsline,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}