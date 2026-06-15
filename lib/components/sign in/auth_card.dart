import 'package:flutter/material.dart';
import 'package:flutter_app/components/sign%20in/auth_service.dart';

class AuthCard extends StatelessWidget {
  const AuthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          AuthService(authName: 'Apple', authLogo: 'assets/images/apple_logo.png'),
          AuthService(authName: 'Google', authLogo: 'assets/images/google_logo.png'),
        ],
      ),
    );
  }
}