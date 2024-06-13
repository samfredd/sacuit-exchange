import 'package:flutter/material.dart';
import 'package:sacuit_exchange/widgets/action_button.dart';
import 'package:sacuit_exchange/widgets/news_tile.dart';
import 'package:sacuit_exchange/widgets/topbar.dart';
import 'package:sacuit_exchange/widgets/transaction_card.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopBar(
            title: Text(
              "MY WALLET",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 26.0,
            ),
            child: Column(
              children: [
                const TransactionCard(
                  amount: "N50,000.00",
                  title: "My Wallet",
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ActionButtons(
                      onPressed: () {},
                      action: "BUY",
                    ),
                    ActionButtons(
                      onPressed: () {},
                      action: "SELL",
                    ),
                    ActionButtons(
                      onPressed: () {},
                      action: "SWAP",
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.0),
            child: Row(
              children: [
                Text(
                  "Recent Activities",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: const [
                NewsTile(),
                NewsTile(),
                NewsTile(),
                NewsTile(),
                NewsTile(),
                NewsTile(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
