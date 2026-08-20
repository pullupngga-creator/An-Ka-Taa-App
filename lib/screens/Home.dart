import 'package:an_ka_taa_app/components/home/history-card.dart';
import 'package:an_ka_taa_app/screens/D%C3%A9pot/%C3%A9tape_1.dart';
import 'package:an_ka_taa_app/screens/livraison/etape_1.dart';
import 'package:flutter/material.dart';
import 'package:an_ka_taa_app/components/home/header.dart';
import 'package:an_ka_taa_app/components/home/order_card.dart';
import 'package:an_ka_taa_app/components/home/promotion_card.dart';
import 'package:an_ka_taa_app/components/home/order_in_progress.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Header(),
              PromotionCard(),
              SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OrderCard(title: 'Livraison de Colis', imagePath: 'assets/images/livraison_illustration.png', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LivraisonEtape1()))),
                  const SizedBox(width: 20),
                  OrderCard(title: 'Dépot de Colis', imagePath: 'assets/images/depot_illustration.png', onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DepotEtape1()))),
                ],
              ),
              SizedBox(height: 21),
              OrderInProgress(),
              SizedBox(height: 21),
              HistoryCard(),
            ],
          ),
        ),
      ),
    );
  }
}