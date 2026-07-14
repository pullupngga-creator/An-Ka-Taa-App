import 'package:an_ka_taa_app/components/home/history-card-card.dart';
import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 362,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Historique',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontSize: 13),
              ),
              Row(
                children: [
                  Text(
                    "Voir Plus",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 12,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  Image.asset(
                    "assets/images/right_arrow_violet.png",
                    width: 17,
                    height: 17,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Container(
            width: 362,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 8.0),
                  HistoryCardCard(title: 'Dépot N°ATK429', subtitle: 'Bamako, ACI2000', imagePath: 'assets/images/depot_icon.png', space: 125),
                  HistoryCardCard(title: "Livraison N°ATK312", subtitle: "Bamako, Baco-Djicoroni", imagePath: "assets/images/retrait_icon.png", space: 104),
                  HistoryCardCard(title: "Livraison N°ATK217", subtitle: "Bamako, Golf", imagePath: "assets/images/retrait_icon.png", space: 111),
                  HistoryCardCard(title: 'Dépot N°ATK359', subtitle: 'Bamako, Faladié', imagePath: 'assets/images/depot_icon.png', space: 125),
                  HistoryCardCard(title: "Livraison N°ATK152", subtitle: "Bamako, Samè", imagePath: "assets/images/retrait_icon.png", space: 111),
                  HistoryCardCard(title: "Livraison N°ATK171", subtitle: "Bamako, Niamana", imagePath: "assets/images/retrait_icon.png", space: 111),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
