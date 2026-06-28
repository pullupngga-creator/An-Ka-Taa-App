import 'package:flutter/material.dart';
import 'package:an_ka_taa_app/components/sign in/form.dart';
import 'package:an_ka_taa_app/components/sign in/sign_inTitleText.dart';
import 'package:an_ka_taa_app/components/sign in/checkbox.dart';
import 'package:an_ka_taa_app/components/sign in/button.dart';
import 'package:an_ka_taa_app/components/sign in/ou.dart';
import 'package:an_ka_taa_app/components/sign in/auth_card.dart';
import 'package:an_ka_taa_app/components/sign in/bottom_text.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SignInTitleText(),
          SignInForm(),
          SignInCheckbox(),
          SignInButton(),
          Ou(),
          AuthCard(),
          BottomText(),
        ],
      ),
    );
  }
}