import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class Etape1Main extends StatefulWidget {
  const Etape1Main({super.key});

  @override
  State<Etape1Main> createState() => _Etape1MainState();
}

class _Etape1MainState extends State<Etape1Main> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _detailsController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: primaryColor,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      final formatted =
          '${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}';
      _dateController.text = formatted;
    }
  }

  void _showTimeSlotPicker(BuildContext context) {
    final List<String> timeSlots = [
      'Dès que possible',
      '08:00 - 10:00',
      '10:00 - 12:00',
      '12:00 - 14:00',
      '14:00 - 16:00',
      '16:00 - 18:00',
    ];

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (ctx) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choisir un créneau horaire',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16),
              ...timeSlots.map(
                (slot) => ListTile(
                  title: Text(
                    slot,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  leading: Icon(
                    Icons.access_time,
                    color: primaryColor,
                    size: 20,
                  ),
                  onTap: () {
                    Navigator.pop(ctx);
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

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
                          "ÉTAPE 1 SUR 5",
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(
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
                  SizedBox(
                    width: 350,
                    height: 78,
                    child: Text(
                      "Où devons-nous prendre\nle colis ?",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 24.0),
                  // Address section card
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
                        // Adresse de départ
                        Text(
                          "Adresse de départ",
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
                                Image.asset(
                                  "assets/images/localisation.png",
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: TextField(
                                    controller: _addressController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Entrez l'adresse de récupération",
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
                        // Ville / Quartier
                        Text(
                          "Ville / Quartier",
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
                                Image.asset(
                                  "assets/images/localisation.png",
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: TextField(
                                    controller: _cityController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Ex: Bamako, Djicoroni-para",
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
                        // Détails supplémentaires
                        Text(
                          "Détails supplémentaires",
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
                            controller: _detailsController,
                            maxLines: 4,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:
                                  "Numéro de porte, repère, instructions\nspécifiques...",
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
                  // Date & Time section title
                  SizedBox(
                    width: 350,
                    child: Text(
                      "Date et Heure de récupération",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Date & Time card
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
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Date de passage",
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                              ),
                              SizedBox(height: 4),
                              GestureDetector(
                                onTap: () => _selectDate(context),
                                child: Container(
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
                                        Icon(
                                          Icons.calendar_today,
                                          color: primaryColor,
                                          size: 18,
                                        ),
                                        SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            _dateController.text.isEmpty
                                                ? "Aujourd'hui"
                                                : _dateController.text,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontSize: 14,
                                                  color:
                                                      _dateController
                                                              .text.isEmpty
                                                          ? Color(0xFF8A8A8A)
                                                          : Colors.black,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Créneau horaire",
                                style: Theme.of(context).textTheme.bodyMedium
                                    ?.copyWith(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                              ),
                              SizedBox(height: 4),
                              GestureDetector(
                                onTap: () => _showTimeSlotPicker(context),
                                child: Container(
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
                                        Icon(
                                          Icons.access_time,
                                          color: primaryColor,
                                          size: 18,
                                        ),
                                        SizedBox(width: 8),
                                        Expanded(
                                          child: Text(
                                            "Dès que possible",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontSize: 14,
                                                  color: Color(0xFF8A8A8A),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
