import 'package:an_ka_taa_app/screens/Home.dart';
import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class DepotEtape6Main extends StatelessWidget {
  const DepotEtape6Main({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.hasBoundedHeight
                  ? constraints.maxHeight
                  : 0.0,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Progress bar with checkmarks
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          width: 32,
                          height: 3,
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(1.5),
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFF9F9F9),
                              width: 4,
                            ),
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 3,
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(1.5),
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFF9F9F9),
                              width: 4,
                            ),
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 3,
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(1.5),
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFF9F9F9),
                              width: 4,
                            ),
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 3,
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(1.5),
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFF9F9F9),
                              width: 4,
                            ),
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 3,
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(1.5),
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFF9F9F9),
                              width: 4,
                            ),
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 3,
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(1.5),
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFF9F9F9),
                              width: 4,
                            ),
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Text(
                            "6",
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 3,
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(1.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.0),
                  // Success header
                  SizedBox(
                    width: 350,
                    height: 176,
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.2),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          "Dépôt Confirmé",
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        SizedBox(height: 2.0),
                        Text(
                          "Votre colis a été enregistré avec succès.",
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium?.copyWith(fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.0),
                  // QR Code + ID card
                  Container(
                    width: 350,
                    height: 421,
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 16.0),
                        Text(
                          "VOTRE RECU FINAL",
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                fontSize: 14,
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          width: 228,
                          height: 228,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Color(0xFFEEEEEE),
                              width: 2,
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/QR Code.png',
                            width: 192,
                            height: 192,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          children: [
                            Text(
                              "ID de depot",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontSize: 16, color: Colors.black),
                            ),
                            Spacer(),
                            Text(
                              "#ATK451",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Text(
                              "Type de service",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontSize: 16, color: Colors.black),
                            ),
                            Spacer(),
                            Text(
                              "Depot Agence",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.0),
                  // Détails du colis
                  Container(
                    width: 350,
                    height: 196,
                    padding: const EdgeInsets.all(24.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/document.png",
                              width: 16,
                              height: 20,
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              "Details du colis",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          children: [
                            Container(
                              width: 29.33,
                              height: 32.67,
                              decoration: BoxDecoration(
                                color: secondaryColor.a == 0
                                    ? secondaryColor
                                    : secondaryColor.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.asset(
                                "assets/images/localisation.png",
                                width: 13.33,
                                height: 16.67,
                              ),
                            ),
                            SizedBox(width: 16.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DESTINATION",
                                  style: Theme.of(context).textTheme.titleMedium
                                      ?.copyWith(
                                        fontSize: 16,
                                        color: Color(0xFF514532),
                                      ),
                                ),
                                Text(
                                  "Bamako, Mali",
                                  style: Theme.of(context).textTheme.titleMedium
                                      ?.copyWith(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 12.0),
                        Row(
                          children: [
                            Container(
                              width: 32.67,
                              height: 32.67,
                              decoration: BoxDecoration(
                                color: secondaryColor.a == 0
                                    ? secondaryColor
                                    : secondaryColor.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.scale,
                                color: secondaryColor,
                                size: 20,
                              ),
                            ),
                            SizedBox(width: 16.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "POIDS ESTIME",
                                  style: Theme.of(context).textTheme.titleMedium
                                      ?.copyWith(
                                        fontSize: 16,
                                        color: Color(0xFF514532),
                                      ),
                                ),
                                Text(
                                  "2.5 kg",
                                  style: Theme.of(context).textTheme.titleMedium
                                      ?.copyWith(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.0),
                  // Retour a l'accueil button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: Container(
                      width: 350,
                      height: 96,
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Column(
                        children: [
                          Container(
                            width: 350,
                            height: 64,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Retour a l'accueil",
                                  style: Theme.of(context).textTheme.titleSmall
                                      ?.copyWith(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Partager le recu button
                  Container(
                    width: 350,
                    height: 96,
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          height: 64,
                          decoration: BoxDecoration(
                            color: Color(0xFFE8E8E8),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.share, color: Colors.black, size: 20),
                              Text(
                                "Partager le recu",
                                style: Theme.of(context).textTheme.titleSmall
                                    ?.copyWith(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
