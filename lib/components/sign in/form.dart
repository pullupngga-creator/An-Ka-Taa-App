import 'package:flutter/material.dart';
import 'package:an_ka_taa_app/components/sign in/motdepassfield.dart';
import 'textfield.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 74),
          width: 327,
          height: 47,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xFF9708AD))
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                child: Image.asset('assets/images/email.png',
                  width: 16.48,
                  height: 13.73,
                ),
              ),
              Expanded(
                child: FormTextField(hintText: 'Entrer votre mail...'),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 16),
          width: 327,
          height: 47,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: Color(0xFF9708AD))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                child: Image.asset('assets/images/lock.png',
                  width: 20.0,
                  height: 19.0,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 8),
                  child: MotDePasseField(hintText: 'Entrer votre mot de passe...'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}