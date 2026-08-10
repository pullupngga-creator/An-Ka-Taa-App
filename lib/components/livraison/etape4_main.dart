import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class Etape4Main extends StatelessWidget {
  const Etape4Main({super.key});

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
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    width: double.infinity,
                    child: Row(
                      children: [
                        Text(
                          "ÉTAPE 3 SUR 5",
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                fontSize: 12,
                                color: Color(0xFF514532),
                              ),
                        ),
                        Spacer(),
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
                        Spacer(),
                        Text(
                          "Informations",
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
                                fontSize: 14,
                                color: Color(0xFF7C5800),
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Lieu et Paiement',
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                        ),
                        SizedBox(height: 24.0),
                      ],
                    ),
                  ),
                  Container(
                    width: 353,
                    height: 264,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: primaryColor.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Image.asset(
                                'assets/images/localisation.png',
                                width: 16,
                                height: 20,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              "Lieu de livraison",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontSize: 14,
                                    color: Color(0xFF514532),
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Adresse de livraison",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontSize: 12, color: Colors.black),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              width: double.infinity,
                              height: 46,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: Center(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText:
                                          'Rue de la Mairie de la Commune IV',
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontSize: 14,
                                            color: Color(0xFF8A8A8A),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ville / Quartier",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontSize: 12, color: Colors.black),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              width: double.infinity,
                              height: 46,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: Center(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Bamako / Djicoroni-para',
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontSize: 14,
                                            color: Color(0xFF8A8A8A),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Container(
                    width: 353,
                    height: 230,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: primaryColor.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Image.asset(
                                'assets/images/money.png',
                                width: 16,
                                height: 20,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              "Modalité de paiement",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          width: 313,
                          height: 70,
                          padding: EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFF4F4F4),
                            borderRadius: BorderRadius.circular(48),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/Mobile Payment.png",
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(width: 16.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mobile Money",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                  ),
                                  Text(
                                    "Payer via votre téléphone",
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 40.0),
                              width: 90,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFFFA859),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                "assets/images/Orange money.png",
                                width: 80,
                                height: 38,
                              ),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(right: 40.0),
                              width: 90,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(0xFF21C9FF),
                                  width: 1.0,
                                ),
                              ),
                              child: Image.asset(
                                "assets/images/Wave.png",
                                width: 80,
                                height: 32,
                              ),
                            ),
                          ],
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
