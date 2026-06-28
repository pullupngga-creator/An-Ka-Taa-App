import 'package:flutter/material.dart';
import '../../style.dart';
import 'promotioncardtext.dart';

class PromotionCard extends StatelessWidget {
  const PromotionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362,
      height: 183,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(21),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.25),
            offset: Offset(0, 5),
            blurRadius: 7,
            spreadRadius: 0,
        )]
      ),
      child: Row(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Image.asset(
              'assets/images/Home_illustration1.png',
              width: 181,
              height: 183,
              fit: BoxFit.contain,
            ),
          ),
          PromotionCardText(),
        ],
      ),
    );
  }
}