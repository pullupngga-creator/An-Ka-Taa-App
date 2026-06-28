import 'package:flutter/material.dart';
import 'package:an_ka_taa_app/components/dot_design.dart';
import 'package:an_ka_taa_app/style.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          const SizedBox(height: 50),
          DotDesign(
            colorscircle: Colors.black,
            colorsline: secondaryColor,
            widthcircle: 12,
            widthligne: 31,
          ),
          const SizedBox(width: 70),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Acceuil',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
