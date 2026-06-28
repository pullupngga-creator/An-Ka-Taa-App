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
            children: [
              Header(),
              PromotionCard(),
              SizedBox(height: 21),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OrderCard(title: 'Livraison de Colis', imagePath: 'assets/images/livraison_illustration.png'),
                  const SizedBox(width: 20),
                  OrderCard(title: 'Dépot de Colis', imagePath: 'assets/images/depot_illustration.png'),
                ],
              ),
              SizedBox(height: 21),
              OrderInProgress(),
            ],
          ),
        ),
      ),
    );
  }
}