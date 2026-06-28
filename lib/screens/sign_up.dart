import 'package:flutter/material.dart';
import 'package:an_ka_taa_app/components/sign up/ou.dart';
import 'package:an_ka_taa_app/components/sign up/checkbox.dart';
import 'package:an_ka_taa_app/components/sign up/sign_upTitletext.dart';
import 'package:an_ka_taa_app/components/sign up/form.dart';
import 'package:an_ka_taa_app/components/sign up/button.dart';
import 'package:an_ka_taa_app/components/sign up/auth_card.dart';
import 'package:an_ka_taa_app/components/sign up/bottom_text.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SignUpTitleText(),
          SignUpForm(),
          SignUpCheckbox(),
          SignUpButton(),
          Ou(),
          AuthCard(),
          BottomText(),
        ],
      ),
    );
  }
}