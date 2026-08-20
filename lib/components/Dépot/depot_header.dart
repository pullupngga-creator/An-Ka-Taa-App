import 'package:flutter/material.dart';

class DepotHeader extends StatelessWidget {
  const DepotHeader({super.key, required this.ontap, required this.title});
  final VoidCallback ontap;
  final String title;
  

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
              title,
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
