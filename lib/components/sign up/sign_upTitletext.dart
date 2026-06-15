import 'package:flutter/material.dart';

class SignUpTitleText extends StatelessWidget {
  const SignUpTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 70),
            child: Text(
              'AN KA TAA',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontSize: 30),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            'Créer un compte de livraison',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 20,
              color: Color(0xFF9708AD),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            'Inscrivez-vous pour découvrir le suivi en temps réel, les notifications intelligentes et un système de livraison intuitif.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 10,
              color: Colors.black.withValues(alpha: 0.5),
            ),
          ),
        ),
      ],
    );
  }
}
