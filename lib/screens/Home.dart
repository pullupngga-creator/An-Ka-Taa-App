import 'package:flutter/material.dart';
import 'package:flutter_app/components/home/header.dart';
import 'package:flutter_app/components/home/order_card.dart';
import 'package:flutter_app/components/home/promotion_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Header(),
            PromotionCard(),
            OrderCard(),
          ],
        ),
      ),
    );
  }
}