import 'package:flutter/material.dart';

class AuthService extends StatelessWidget {
  const AuthService({super.key, required this.authName, required this.authLogo});
  final String authName;
  final String authLogo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFF9708AD)),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(authLogo),
            SizedBox(width: 5),
            Text(
              authName,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}