import 'package:an_ka_taa_app/style.dart';
import 'package:an_ka_taa_app/components/livraison/large_card.dart';
import 'package:flutter/material.dart';

class Etape1Main extends StatefulWidget {
  const Etape1Main({super.key, this.onSelectionChanged});

  final ValueChanged<String>? onSelectionChanged;

  @override
  State<Etape1Main> createState() => _Etape1MainState();
}

class _Etape1MainState extends State<Etape1Main> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 393,
      height: 708,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0),
            width: 353,
            child: Row(
              children: [
                Text(
                  "ÉTAPE 1 SUR 5",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 12,
                    color: Color(0xFF514532),
                  ),
                ),
                SizedBox(width: 50.0),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.25),
                        offset: Offset(0, 5),
                        blurRadius: 7,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Color(0xFFE2E2E2),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.25),
                        offset: Offset(0, 5),
                        blurRadius: 7,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Color(0xFFE2E2E2),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.25),
                        offset: Offset(0, 5),
                        blurRadius: 7,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Color(0xFFE2E2E2),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.25),
                        offset: Offset(0, 5),
                        blurRadius: 7,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Color(0xFFE2E2E2),
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.25),
                        offset: Offset(0, 5),
                        blurRadius: 7,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 50.0),
                Text(
                  "Informations",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 14,
                    color: Color(0xFF7C5800),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          SizedBox(
            width: 353,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lieu de Reception",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Veuillez renseigner le lieu de reception du colis",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF514532),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          LargeCard(
            title: "Aéroport",
            description:
                "Reception de votre colis dans un bureau de transit, Agence...",
            imagePath: "assets/images/Airport.png",
            color: Color(0xFFf9d4fb),
            isSelected: selectedIndex == 0,
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
              widget.onSelectionChanged?.call('aeroport');
            },
          ),
          SizedBox(height: 20.0),
          LargeCard(
            title: "Compagnie de Transport",
            description:
                "Reception de votre colis dans une compagnie de transport",
            imagePath: "assets/images/compagnie_icon.png",
            color: Color(0xFFE2E2E2),
            isSelected: selectedIndex == 1,
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
              widget.onSelectionChanged?.call('compagnie');
            },
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.only(left: 5.0),
            width: 353,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(21),
              border: Border.all(color: Colors.black, width: 1.0),
            ),
            child: Center(
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFf9d4fb),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Image.asset(
                      "assets/images/help_icon.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    children: [
                      Text(
                        "Besoin d'aide ?",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          minWidth: 150.0,
                          maxWidth: 250.0,
                        ),
                        child: Text(
                          "Notre service client est disponible 24/7 pour vous accompagner dans votre expédition.",
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 12,
                            color: Color(0xFF514532),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
