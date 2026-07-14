import 'package:flutter/material.dart';

class OrderInProgressBottomText extends StatefulWidget {
  const OrderInProgressBottomText({super.key});

  @override
  State<OrderInProgressBottomText> createState() =>
      _OrderInProgressBottomTextState();
}

class _OrderInProgressBottomTextState extends State<OrderInProgressBottomText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12.0),
      width: 80,
      height: 30,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_pin,
                size: 10,
                color: Colors.black.withValues(alpha: 0.5),
              ),
              Text(
                "Localisation",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 7,
                  color: Colors.black.withValues(alpha: 0.5),
                ),
              ),
            ],
          ),
          Text(
            "Bamako, Sebenicoro",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 7,
              color: Colors.black.withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}
