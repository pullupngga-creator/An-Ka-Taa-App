import 'package:flutter/material.dart';
import 'package:flutter_app/components/home/button.dart';
import 'package:flutter_app/style.dart';

class PromotionCardText extends StatelessWidget {
  const PromotionCardText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 27),
      child: Column(
        children: [
          Text(
            'Promotion 50%',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: 160,
            child: Text(
              'A votre 10 livraison recevez une reduction de 50%',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 10,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 18),
          Row(
            spacing: 5,
            children: [
              Container(
                width: 127,
                height: 8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [primaryColor, Colors.white],
                    stops: [0.5, 0.5],
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Text(
                '5/10',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 10,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          PromotionCardButton()
        ],
      ),
    );
  }
}
