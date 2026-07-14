import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.title, required this.imagePath, this.onTap});
  final String title;
  final String imagePath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6.0),
        width: 171,
        height: 144,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.25),
              offset: Offset(0, 5),
              blurRadius: 7,
              spreadRadius: 0,
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(4.0, 4.0, 0, 0),
              width: 72,
              height: 45,
              child: Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 16)),
            ),
            const SizedBox(height: 11.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 15),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: secondaryColor,
                      ),
                      child: Icon(Icons.add, size: 21, color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Image.asset(imagePath, width: 115, height: 72),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
