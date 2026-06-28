import 'package:flutter/material.dart';
import 'package:an_ka_taa_app/components/dot_design.dart';
import 'package:an_ka_taa_app/components/onboarding/onboarding_titletext.dart';
import 'package:an_ka_taa_app/components/onboarding/onboarding_subtitletext.dart';
import 'package:an_ka_taa_app/components/onboarding/button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DotDesign(colorscircle: Color(0xFF9708AD), colorsline: Colors.black, widthcircle: 13.37, widthligne: 62),
          OnboardingTitleText(),
          Container(
            margin: EdgeInsets.fromLTRB(16.0, 53.0, 0, 0),
            child: Image.asset('assets/images/illustration_onboarding2.png')
          ),
          OnboardingSubtitletext(),
          OnboardingButton(),
        ],
      ),
    );
  }
}