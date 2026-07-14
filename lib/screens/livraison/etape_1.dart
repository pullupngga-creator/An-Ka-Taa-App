import 'package:an_ka_taa_app/components/livraison/etape1_main.dart';
import 'package:an_ka_taa_app/components/livraison/livraison_header.dart';
import 'package:an_ka_taa_app/screens/Home.dart';
import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class LivraisonEtape1 extends StatelessWidget {
  const LivraisonEtape1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LivraisonHeader(
            ontap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            ),
          ),
          Etape1Main(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: GestureDetector(
          onTap: () {},
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
