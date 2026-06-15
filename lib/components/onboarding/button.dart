import 'package:flutter/material.dart';
import 'package:flutter_app/screens/sign_in.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 0.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF9708AD),
          foregroundColor: Colors.white,
          fixedSize: Size(284, 62),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(31.0),
          ),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 32.0,
          children: [
            Text(
              'Commencer',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                color: Colors.white
              ),
            ),
            Image.asset('assets/images/icon-next.png', 
            width: 47,
            height: 23,
            ),
          ],
        ),
      ),
    );
  }
}