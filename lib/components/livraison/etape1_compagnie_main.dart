import 'package:an_ka_taa_app/style.dart';
import 'package:an_ka_taa_app/components/livraison/compagnie_card.dart';
import 'package:an_ka_taa_app/services/livraison_service.dart';
import 'package:flutter/material.dart';

class Etape1CompagnieMain extends StatefulWidget {
  const Etape1CompagnieMain({super.key});

  @override
  State<Etape1CompagnieMain> createState() => _Etape1CompagnieMainState();
}

class _Etape1CompagnieMainState extends State<Etape1CompagnieMain> {
  int? selectedIndex;

  final List<Map<String, String>> companies = [
    {
      'title': 'Bani Transport',
      'subtitle': 'Sogoniko',
      'icon': 'assets/images/truck_icon.png',
    },
    {
      'title': 'Diarra Transport',
      'subtitle': 'Sogoniko',
      'icon': 'assets/images/truck_icon.png',
    },
    {
      'title': 'Sonef Transport',
      'subtitle': 'Badialan',
      'icon': 'assets/images/truck_icon.png',
    },
    {
      'title': 'Nour Transport',
      'subtitle': 'Avenue de l\'OUA',
      'icon': 'assets/images/truck_icon.png',
    },
    {
      'title': 'CMT (Compagnie Malienne de Transport)',
      'subtitle': 'Route Nationale 6 (RN6)',
      'icon': 'assets/images/truck_icon.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 393,
      height: 708,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
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
                    "Information",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 14,
                      color: Color(0xFF7C5800),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quelle compagnie de transport ? ',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    'Sélectionnez la compagnie partenaire pour acheminer votre colis à vous.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 14,
                      color: Color(0xFF8A8A8A),
                    ),
                  ),
                  SizedBox(height: 24.0),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  ...List.generate(companies.length, (i) {
                    final item = companies[i];
                    return Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: CompagnieCard(
                        title: item['title']!,
                        subtitle: item['subtitle']!,
                        iconPath: item['icon']!,
                        isSelected: selectedIndex == i,
                        onTap: () {
                          setState(() {
                            selectedIndex = i;
                          });
                          LivraisonService().setSelectedCompany(item);
                        },
                      ),
                    );
                  }),
                  SizedBox(height: 12.0),
                  // Help card
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.06),
                          offset: Offset(0, 6),
                          blurRadius: 16,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Color(0xFFF4D9FF),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/help_icon.png',
                              width: 28,
                              height: 28,
                              color: Color(0xFF7A1AFF),
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Besoin d'aide ?",
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 6.0),
                              ConstrainedBox(
                                constraints: const BoxConstraints(maxWidth: 260),
                                child: Text(
                                  "Notre service client est disponible 24/7 pour vous accompagner dans le choix de votre transporteur.",
                                  softWrap: true,
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: 13,
                                    color: Color(0xFF6E6E6E),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 36.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}