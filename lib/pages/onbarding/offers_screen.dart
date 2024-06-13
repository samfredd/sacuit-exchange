import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WhatWeOfferScreen extends StatelessWidget {
  const WhatWeOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/pictures/3.svg',
              ),
              const SizedBox(height: 20),
              const Text(
                'Explore Cryptocurrency Markets',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'With CryptoXchange, you have access to a wide range of cryptocurrencies, including Bitcoin, Ethereum, Litecoin, and more. Explore our markets to discover new opportunities and make informed investment decisions.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
