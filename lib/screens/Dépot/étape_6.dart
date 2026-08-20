import 'package:an_ka_taa_app/components/Dépot/etape6_main.dart';
import 'package:an_ka_taa_app/screens/Home.dart';
import 'package:flutter/material.dart';

class DepotEtape6 extends StatelessWidget {
  const DepotEtape6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            ),
            child: Container(
              width: 393,
              height: 64,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(16),
                    child: Image.asset('assets/images/Reply Arrow.png'),
                  ),
                  SizedBox(width: 50.0),
                  Text(
                    "Depot Confirme",
                    style: Theme.of(
                      context,
                    ).textTheme.titleMedium?.copyWith(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: DepotEtape6Main()),
        ],
      ),
    );
  }
}
