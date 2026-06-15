import 'package:flutter/material.dart';

class SignInTitleText extends StatelessWidget {
  const SignInTitleText({super.key});

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
            'Content de te revoir !',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontSize: 20,
              color: Color(0xFF9708AD),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            'Saisissez vos coordonnées pour bénéficier d\'une expérience de livraison fluide et fiable conçue spécialement pour vous.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 14,
              color: Colors.black.withValues(alpha: 0.5),
            ),
          ),
        ),
      ],
    );
  }
}
