import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class Etape2Main extends StatefulWidget {
  const Etape2Main({super.key});

  @override
  State<Etape2Main> createState() => _Etape2MainState();
}

class _Etape2MainState extends State<Etape2Main> {
  bool _isInternational = false;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _instructionsController = TextEditingController();

  String? _selectedRegion;
  String? _selectedCountry;

  final List<String> _maliRegions = [
    'Bamako',
    'Koulikoro',
    'Sikasso',
    'Ségou',
    'Mopti',
    'Timbuktu',
    'Gao',
    'Kayes',
    'Kidal',
    'Taoudénit',
    'Ménaka',
  ];

  final List<String> _countries = [
    'Sénégal',
    'Côte d\'Ivoire',
    'Burkina Faso',
    'Guinée',
    'Niger',
    'Bénin',
    'Togo',
    'Cameroun',
    'France',
    'États-Unis',
    'Belgique',
    'Allemagne',
    'Espagne',
    'Italie',
    'Royaume-Uni',
    'Maroc',
    'Tunisie',
    'Algérie',
    'Canada',
    'Chine',
  ];

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
                          "ÉTAPE 2 SUR 5",
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
                  Text(
                    "Où doit-on livrer\nle colis ?",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 28,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 24.0),

                  // Toggle Mali / International
                  Container(
                    width: 353,
                    height: 52,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F4F4),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isInternational = false;
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 250),
                              decoration: BoxDecoration(
                                color: !_isInternational
                                    ? secondaryColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("🇲🇱", style: TextStyle(fontSize: 16)),
                                    SizedBox(width: 6),
                                    Text(
                                      "Mali",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: !_isInternational
                                                ? Colors.black
                                                : Color(0xFF8A8A8A),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isInternational = true;
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 250),
                              decoration: BoxDecoration(
                                color: _isInternational
                                    ? secondaryColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("🌍", style: TextStyle(fontSize: 16)),
                                    SizedBox(width: 6),
                                    Text(
                                      "International",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: _isInternational
                                                ? Colors.black
                                                : Color(0xFF8A8A8A),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),

                  // Address card
                  Container(
                    width: 353,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          offset: Offset(0, 8),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Section header
                        Row(
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/localisation.png",
                                  width: 16,
                                  height: 16,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Text(
                              _isInternational
                                  ? "Destination internationale"
                                  : "Destination au Mali",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),

                        // --- Mode Mali ---
                        if (!_isInternational) ...[
                          // Région du Mali
                          Text(
                            "Région de destination",
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                          ),
                          SizedBox(height: 4),
                          Container(
                            width: double.infinity,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Color(0xFFF4F4F4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: _selectedRegion,
                                hint: Text(
                                  "Sélectionnez une région",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontSize: 14,
                                        color: Color(0xFF8A8A8A),
                                      ),
                                ),
                                isExpanded: true,
                                items: _maliRegions.map((String region) {
                                  return DropdownMenuItem<String>(
                                    value: region,
                                    child: Text(
                                      region,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedRegion = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],

                        // --- Mode International ---
                        if (_isInternational) ...[
                          // Pays de destination
                          Text(
                            "Pays de destination",
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                          ),
                          SizedBox(height: 4),
                          Container(
                            width: double.infinity,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Color(0xFFF4F4F4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: _selectedCountry,
                                hint: Text(
                                  "Sélectionnez un pays",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontSize: 14,
                                        color: Color(0xFF8A8A8A),
                                      ),
                                ),
                                isExpanded: true,
                                items: _countries.map((String country) {
                                  return DropdownMenuItem<String>(
                                    value: country,
                                    child: Text(
                                      country,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    _selectedCountry = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),

                          // Adresse dans le pays
                          Text(
                            "Adresse dans le pays",
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                          ),
                          SizedBox(height: 4),
                          Container(
                            width: double.infinity,
                            height: 46,
                            decoration: BoxDecoration(
                              color: Color(0xFFF4F4F4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                              child: TextField(
                                controller: _addressController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText:
                                      "Ex: 15 Rue de la Paix, Paris",
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
                        ],
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),

                  // Contact section
                  Container(
                    width: 353,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          offset: Offset(0, 8),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Section header
                        Row(
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            Text(
                              "Informations du destinataire",
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),

                        // Nom du destinataire
                        Text(
                          "Nom complet du destinataire",
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          width: double.infinity,
                          height: 46,
                          decoration: BoxDecoration(
                            color: Color(0xFFF4F4F4),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: TextField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Ex: Moussa Traoré",
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

                        // Phone number
                        Text(
                          "Numéro de téléphone",
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                        ),
                        SizedBox(height: 4),
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
                            child: Row(
                              children: [
                                Text(
                                  _isInternational ? "+33" : "+223",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                ),
                                SizedBox(width: 8),
                                Container(
                                  width: 1,
                                  height: 24,
                                  color: Color(0xFFE2E2E2),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: TextField(
                                    controller: _phoneController,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: _isInternational
                                          ? "00 00 00 00 00"
                                          : "00 00 00 00",
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

                        // Instructions
                        Text(
                          "Instructions de livraison (Optionnel)",
                          style: Theme.of(context).textTheme.bodyMedium
                              ?.copyWith(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                        ),
                        SizedBox(height: 4),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFF4F4F4),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.all(16),
                          child: TextField(
                            controller: _instructionsController,
                            maxLines: 4,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  "Ex: Laisser au gardien à l'entrée\nrouge...",
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
                  SizedBox(height: 24.0),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
