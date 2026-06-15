import 'package:flutter/material.dart';
import '../../screens/sign_up.dart';

class BottomText extends StatelessWidget {
  const BottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(90, 190, 0, 0),
      child: Row(
        children: [
          Text(
            'Vous n\'avez pas de compte ?',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 10,
              color: Colors.black.withValues(alpha: 0.5),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
            },
            child: Text(
              'S\'inscrire',
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
