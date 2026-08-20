import 'package:an_ka_taa_app/components/Dépot/depot_header.dart';
import 'package:an_ka_taa_app/components/Dépot/etape3_main.dart';
import 'package:an_ka_taa_app/screens/Dépot/étape_2.dart';
import 'package:an_ka_taa_app/screens/Dépot/étape_4.dart';
import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class DepotEtape3 extends StatelessWidget {
  const DepotEtape3({super.key});

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
              MaterialPageRoute(builder: (context) => const DepotEtape2()),
            ),
            title: "Dépot de colis",
          ),
          Expanded(child: DepotEtape3Main()),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DepotEtape4()),
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
