import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class PriceTile extends StatelessWidget {
  final String name;
  final String market;
  final String price;
  final bool increase;
  final String iconPath;
  const PriceTile({
    super.key,
    required this.name,
    required this.market,
    required this.price,
    required this.increase,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: GlassContainer(
          height: 90,
          width: 190,
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(16),
          borderColor: Theme.of(context).primaryColorDark.withOpacity(0.1),
          blur: 20,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.currency_bitcoin,
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      market,
                      style: TextStyle(
                        color: increase ? Colors.green : Colors.red,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
