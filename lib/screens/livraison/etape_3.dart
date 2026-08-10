import 'package:an_ka_taa_app/components/livraison/etape3_main.dart';
import 'package:an_ka_taa_app/components/livraison/livraison_header.dart';
import 'package:an_ka_taa_app/screens/Home.dart';
import 'package:an_ka_taa_app/screens/livraison/etape_4.dart';
import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class Etape3 extends StatelessWidget {
  const Etape3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LivraisonHeader(
            title: 'Livraison',
            ontap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            ),
          ),
          Expanded(child: Etape3Main()),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: GestureDetector(
          onTap: () {
            // Navigate to the next step
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Etape4()),
            );
          },
          child: Container(
            width: 353,
            height: 50,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Suivant",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(width: 10.0),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}