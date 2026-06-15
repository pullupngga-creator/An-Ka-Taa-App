import 'package:flutter/material.dart';
import 'package:flutter_app/style.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15)
          ),
          width: 171,
          height: 144,
          child: ElevatedButton(
            onPressed: () {}, 
            child: SizedBox(
              child: Column(
                children: [
                  SizedBox(
                    width: 72,
                    child: Text('Livraison de Colis',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 15,
                      color: Colors.black,
                    ),),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: secondaryColor,
                        ),
                        child: Icon(Icons.add, 
                        size: 21,
                        color: Colors.black,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            ),
        ),
      ],
    );
  }
}