import 'package:an_ka_taa_app/style.dart';
import 'package:flutter/material.dart';

class HistoryCardCard extends StatelessWidget {
  const HistoryCardCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.space,
  });
  final String title;
  final String subtitle;
  final String imagePath;
  final int space;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 3.5, 0, 3.5),
      width: 321,
      height: 35,
      child: Row(
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(
              imagePath,
              width: 35,
              height: 35,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          SizedBox(width: space.toDouble()),
          Text(
            "Détails",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 11,
              fontWeight: FontWeight.w300,
            ),
          ),
          Image.asset("assets/images/More Than.png", width: 17, height: 17,)
        ],
      ),
    );
  }
}
