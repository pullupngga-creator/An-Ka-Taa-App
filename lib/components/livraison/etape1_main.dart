import 'package:flutter/material.dart';

class Etape1Main extends StatelessWidget {
  const Etape1Main({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 393,
      height: 708,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0),
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
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
