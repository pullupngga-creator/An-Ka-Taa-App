import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Home.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF9708AD),
          foregroundColor: Colors.white,
          fixedSize: Size(327, 39),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(31.0),
          ),
        ),
        onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            Text(
              'S\'inscrire',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 15,
                color: Colors.white
              ),
            ),
            Image.asset('assets/images/Hand.png', 
            width: 23,
            height: 19,
            ),
          ],
        ),
      ),
    );
  }
}