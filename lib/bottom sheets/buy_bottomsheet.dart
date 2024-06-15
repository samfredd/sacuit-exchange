import 'package:flutter/material.dart';

class BuyBottomSheet extends StatelessWidget {
  const BuyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      height: 400,
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'BUY Options',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text('Here you can add specific options or inputs for BUY.'),
          ],
        ),
      ),
    );
  }
}
