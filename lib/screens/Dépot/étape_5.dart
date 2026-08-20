import 'package:an_ka_taa_app/components/Dépot/depot_header.dart';
import 'package:an_ka_taa_app/components/Dépot/etape5_main.dart';
import 'package:an_ka_taa_app/screens/Dépot/étape_4.dart';
import 'package:an_ka_taa_app/screens/Dépot/étape_6.dart';
import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class DepotEtape5 extends StatelessWidget {
  const DepotEtape5({super.key});

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
              MaterialPageRoute(builder: (context) => const DepotEtape4()),
            ),
            title: "Dépot de colis",
          ),
          Expanded(child: DepotEtape5Main()),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DepotEtape6()),
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
                            "Confirmer le depot",
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
