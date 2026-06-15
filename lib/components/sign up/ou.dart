import 'package:flutter/material.dart';

class Ou extends StatelessWidget {
  const Ou({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      margin: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
          children: [
            Image.asset('assets/images/Line 2.png'),
            const SizedBox(width: 10),
            Text(
              'Ou',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 14,
                  ),
            ),
            const SizedBox(width: 10),
            Image.asset('assets/images/Line 1.png'),
          ],
      ),
    );
  }
}