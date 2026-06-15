import 'package:flutter/material.dart';

class OnboardingSubtitletext extends StatelessWidget {
  const OnboardingSubtitletext({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30.0, 16.0, 32.0, 0.0),
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          text: 'Envoyer ',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontSize: 20,
          ),
          children: [
            TextSpan(
              text: 'et',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 20,
              ),
            ),
            TextSpan(
              text: ' Recevez',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
              ),
            ),
            TextSpan(
              text: ' en toute',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 20,
              ),
            ),
            TextSpan(
              text: ' Simplicité',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
              ),
            ),
            TextSpan(
              text: ' et en toute',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 20,
              ),
            ),
            TextSpan(
              text: ' Sécutité.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
