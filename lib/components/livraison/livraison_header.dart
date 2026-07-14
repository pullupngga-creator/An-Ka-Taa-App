import 'package:flutter/material.dart';

class LivraisonHeader extends StatelessWidget {
  const LivraisonHeader({super.key, required this.ontap});
  final VoidCallback ontap;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 393,
        height: 64,
        color: Colors.white,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: Image.asset('assets/images/Reply Arrow.png')
            ),
            SizedBox(width: 100.0,),
            Text(
              'Livraison',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
