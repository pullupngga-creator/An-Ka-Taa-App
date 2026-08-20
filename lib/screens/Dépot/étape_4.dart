import 'package:an_ka_taa_app/components/Dépot/depot_header.dart';
import 'package:an_ka_taa_app/components/Dépot/etape4_main.dart';
import 'package:an_ka_taa_app/screens/Dépot/étape_3.dart';
import 'package:an_ka_taa_app/screens/Dépot/étape_5.dart';
import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class DepotEtape4 extends StatelessWidget {
  const DepotEtape4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DepotHeader(
            ontap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DepotEtape3()),
            ),
            title: "Dépot de colis",
          ),
          Expanded(child: DepotEtape4Main()),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DepotEtape5()),
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
