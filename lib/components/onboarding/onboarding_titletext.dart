import 'package:flutter/material.dart';

class OnboardingTitleText extends StatelessWidget {
  const OnboardingTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.0, 30.0, 16.0, 0.0),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'UNE EXPÉRIENCE',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 35,
                ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 21.0),
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFFFAE00),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset('assets/images/illustration_onboarding1.png',
                fit: BoxFit.cover,
                width: 80,
                height: 50,
                ),
              ),
              Text(
                'DE LIVRAISON',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 35,
                  ),
              ),
            ],
          ),
          Text(
            'MODERNE',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 35,
                ),
          ),
        ],
      ),
    );
  }
}
