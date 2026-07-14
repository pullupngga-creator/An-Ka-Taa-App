import 'package:an_ka_taa_app/components/home/order_in_progress_bottom_text.dart';
import 'package:an_ka_taa_app/components/home/order_progress_bar.dart';
import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class OrderInProgress extends StatelessWidget {
  const OrderInProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 362,
      height: 205,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Commande en cours",
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontSize: 13, fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 159),
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
          SizedBox(height: 14.0),
          Container(
            width: 362,
            height: 171,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.25),
                  offset: Offset(0, 5),
                  blurRadius: 7,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  width: 315,
                  height: 85,
                  padding: EdgeInsets.only(top: 10.0),
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Livraison N°ATK450',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium?.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "En cours...",
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(
                                  fontSize: 11,
                                  color: Colors.black.withValues(alpha: 0.5),
                                ),
                          ),
                        ],
                      ),
                      SizedBox(width: 93.0,),
                      Image.asset("assets/images/commande_en_cours_illustration.png",
                      width: 85.0,
                      height: 85.0,
                      ),
                    ],
                  ),
                ),
                OrderProgressBar(),
                SizedBox(height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    OrderInProgressBottomText(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
