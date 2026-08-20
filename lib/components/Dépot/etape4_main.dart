import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class DepotEtape4Main extends StatelessWidget {
  const DepotEtape4Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Step indicator — ÉTAPE 4 SUR 5
          Container(
            margin: EdgeInsets.only(top: 20.0),
            width: double.infinity,
            child: Row(
              children: [
                Text(
                  "ÉTAPE 4 SUR 5",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
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
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
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
                  'Documents à fournir',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 12.0),
                Text(
                  'Téléversez les pièces nécessaires pour le dépôt du colis.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 14,
                    color: Color(0xFF8A8A8A),
                  ),
                ),
                SizedBox(height: 31.0),
              ],
            ),
          ),
          // Pièce d'identité
          DottedBorder(
            color: secondaryColor,
            strokeWidth: 3,
            borderType: BorderType.RRect,
            radius: Radius.circular(32),
            dashPattern: [8, 10],
            strokeCap: StrokeCap.round,
            child: Container(
              width: 353,
              height: 244,
              padding: EdgeInsets.all(40.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(
                      'assets/images/document.png',
                      width: 24,
                      height: 30,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Text(
                    'Pièce d\'identité',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Glisser-déposer ou parcourir pour télécharger',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 14,
                      color: Color(0xFF514532),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24.0),
          // Photo du colis
          DottedBorder(
            color: secondaryColor,
            strokeWidth: 3,
            borderType: BorderType.RRect,
            radius: Radius.circular(32),
            dashPattern: [8, 10],
            strokeCap: StrokeCap.round,
            child: Container(
              width: 353,
              height: 244,
              padding: EdgeInsets.all(40.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(
                      'assets/images/document.png',
                      width: 24,
                      height: 30,
                    ),
                  ),
                  SizedBox(height: 24.0),
                  Text(
                    'Photo du colis',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Glisser-déposer ou parcourir pour télécharger',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 14,
                      color: Color(0xFF514532),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
