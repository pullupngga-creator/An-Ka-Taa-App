import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class DepotEtape3Main extends StatefulWidget {
  const DepotEtape3Main({super.key});

  @override
  State<DepotEtape3Main> createState() => _DepotEtape3MainState();
}

class _DepotEtape3MainState extends State<DepotEtape3Main> {
  bool _isSwitched = false;

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
                  // Step indicator
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
                  // Title
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description du colis',
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(
                                fontSize: 36,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                        ),
                        SizedBox(height: 12.0),
                        Text(
                          'Donnez-nous quelques détails sur ce que vous allez déposer.',
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontSize: 14,
                                color: Color(0xFF8A8A8A),
                              ),
                        ),
                        SizedBox(height: 24.0),
                      ],
                    ),
                  ),
                  // Poids du colis
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: double.infinity,
                    constraints: BoxConstraints(minHeight: 160),
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
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4D9FF),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/poids.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                            SizedBox(width: 12.0),
                            Text(
                              'Poids du Colis',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Poids estimé (kg)",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                            ),
                            SizedBox(height: 12.0),
                            Container(
                              width: double.infinity,
                              height: 46,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Ex: 2.5',
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
                            SizedBox(height: 16.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // Détails du contenu
                  Container(
                    padding: EdgeInsets.all(20.0),
                    width: double.infinity,
                    constraints: BoxConstraints(minHeight: 220),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4D9FF),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/contenu.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                            SizedBox(width: 12.0),
                            Text(
                              'Détails du contenu',
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                            ),
                            SizedBox(width: 24.0),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Contenu du colis",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                            ),
                            SizedBox(height: 12.0),
                            Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText:
                                            'Ex: Vêtements, Livres, Électronique...',
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
                                ],
                              ),
                            ),
                            SizedBox(height: 14),
                            Text(
                              "Valeur estimée (FCFA)",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                            ),
                            SizedBox(height: 12.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: Container(
                                padding: EdgeInsets.only(left: 10.0),
                                width: double.infinity,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF4F4F4),
                                  borderRadius: BorderRadius.circular(48),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "XOF",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                    ),
                                    SizedBox(width: 8.0),
                                    Expanded(
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: '0,00',
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
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 16.0),
                            // Colis fragile
                            Center(
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                width: 303,
                                height: 84,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF4F4F4),
                                  borderRadius: BorderRadius.circular(48),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/fragile.png',
                                        width: 12,
                                        height: 18,
                                      ),
                                      SizedBox(width: 12.0),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Colis fragile ?",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black,
                                                  ),
                                            ),
                                            SizedBox(height: 2.0),
                                            ConstrainedBox(
                                              constraints: BoxConstraints(
                                                maxWidth: 164,
                                              ),
                                              child: Text(
                                                "Nécessite une manipulation soigneuse",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                      fontSize: 12,
                                                      color: Color(0xFF8A8A8A),
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 8.0),
                                      Switch(
                                        value: _isSwitched,
                                        onChanged: (bool newValue) {
                                          setState(() {
                                            _isSwitched = newValue;
                                          });
                                        },
                                        activeThumbColor: primaryColor,
                                        activeTrackColor:
                                            primaryColor.withValues(alpha: 0.5),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
