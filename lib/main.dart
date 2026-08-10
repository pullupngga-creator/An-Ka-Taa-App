import 'package:an_ka_taa_app/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:an_ka_taa_app/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
      theme: ThemeData(
        textTheme: TextTheme(
          titleMedium: titleSemiBoldTextStyle,
          titleLarge: titleLargeTextStyle,
          titleSmall: titleSmallTextStyle,
          bodyLarge: body1BoldTextStyle,
          bodyMedium: body1RegularTextStyle,
        )
      ),
    );
  }
}