import 'package:flutter/material.dart';

class PromotionCardButton extends StatelessWidget {
  const PromotionCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(right: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            fixedSize: Size(169, 30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8.0,
            children: [
              Text(
                'Commande Plus',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 11,
                  color: Colors.white
                ),
              ),
              Image.asset('assets/images/right_arrow_white.png', 
              width: 26,
              height: 18,
              ),
            ],
          ),
        ),
    );
  }
}