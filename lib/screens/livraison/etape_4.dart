import 'package:an_ka_taa_app/components/livraison/etape4_main.dart';
import 'package:an_ka_taa_app/components/livraison/livraison_header.dart';
import 'package:an_ka_taa_app/screens/Home.dart';
import 'package:an_ka_taa_app/screens/livraison/etape_5.dart';
import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class Etape4 extends StatelessWidget {
  const Etape4({super.key});

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
          Expanded(child: Etape4Main()),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 168,
        color: Colors.white,
        child: SafeArea(
          top: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      "Total estimé",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 16,
                        color: Colors.black.withValues(alpha: 0.5),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "12 500 FCFA",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the next step
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Etape5()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
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
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontSize: 14, color: Colors.white),
                          ),
                          SizedBox(width: 10.0),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
