import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class LargeCard extends StatelessWidget {
  const LargeCard({
    super.key,
    required this.title,
    required this.description,
    required this.color,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  });
  final String title;
  final String description;
  final Color color;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 353,
        height: 220,
        child: Container(
          width: 353,
          height: 220,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: isSelected ? secondaryColor : Colors.transparent,
              width: 2.0,
            ),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Image.asset(
                  imagePath,
                  width: 30.14,
                  height: 27,
                ),
              ),
              SizedBox(height: 10.0),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 150.0,
                  maxWidth: 305.0,
                ),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 220.0,
                  maxWidth: 305.0,
                ),
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF514532),
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
