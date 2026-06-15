import 'package:flutter/material.dart';
import '../../screens/sign_in.dart';

class BottomText extends StatelessWidget {
  const BottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(90, 140, 0, 0),
      child: Row(
        children: [
          Text(
            'Vous avez déjà un compte ?',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 10,
              color: Colors.black.withValues(alpha: 0.5),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
            },
            child: Text(
              'Se connecter',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: 10,
                color: Color(0xFF9708AD),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
