import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/pictures/Img.svg',
            ),
            const SizedBox(height: 20),
            const Text(
              'Trade like a pro',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to CryptoXchange, your go-to platform for buying, selling, and trading cryptocurrencies. Get started with us today and take control of your financial future.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Add your illustration here
          ],
        ),
      ),
    );
  }
}
