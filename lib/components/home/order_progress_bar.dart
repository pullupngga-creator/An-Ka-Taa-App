import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class OrderProgressBar extends StatelessWidget {
  const OrderProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.25),
                    offset: Offset(0, 5),
                    blurRadius: 7,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
            SizedBox(width: 5.0),
            Container(
              width: 111,
              height: 3,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.25),
                    offset: Offset(0, 5),
                    blurRadius: 7,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
            SizedBox(width: 5.0),
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.25),
                    offset: Offset(0, 5),
                    blurRadius: 7,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
            SizedBox(width: 5.0),
            Container(
              width: 111,
              height: 3,
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.25),
                    offset: Offset(0, 5),
                    blurRadius: 7,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
            SizedBox(width: 5.0),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.25),
                    offset: Offset(0, 5),
                    blurRadius: 7,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Commande",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 7,
                color: primaryColor,
              ),
            ),
            SizedBox(width: 90.0),
            Container(
              margin: EdgeInsets.only(right: 15.0),
              child: Text(
                "Reception",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 10,
                  color: primaryColor,
                ),
              ),
            ),
            SizedBox(width: 84.0),
            Text(
              "Arrivée",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 7,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
