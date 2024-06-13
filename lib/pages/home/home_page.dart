import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sacuit_exchange/widgets/action_button.dart';
import 'package:sacuit_exchange/widgets/news_tile.dart';
import 'package:sacuit_exchange/widgets/price_tile.dart';
import 'package:sacuit_exchange/widgets/topbar.dart';
import 'package:sacuit_exchange/widgets/transaction_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const Column(),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background_image.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              TopBar(
                title: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF0000FF)
                            .withOpacity(0.5), // Blue with opacity
                        const Color(0xFF800080)
                            .withOpacity(0.5), // Purple with opacity
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: SvgPicture.asset(
                      "assets/pictures/person1.svg",
                    ),
                  ),
                ),
                actions: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF0000FF)
                              .withOpacity(0.5), // Blue with opacity
                          const Color(0xFF800080)
                              .withOpacity(0.5), // Purple with opacity
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        "assets/icons/notification-bing.svg",
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Column(
                  children: [
                    const TransactionCard(
                      title: 'My Wallet',
                      amount: 'N80,000,000.00',
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
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Row(
                    //   children: [
                    //     Text(
                    //       "Trending",
                    //       style: TextStyle(
                    //         fontSize: 18,
                    //         fontWeight: FontWeight.bold,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 1,
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PriceTile(
                      name: "BTC",
                      market: "+4.00",
                      price: "8000 USD",
                      increase: true,
                      iconPath: "",
                    ),
                    PriceTile(
                      name: "ETH",
                      market: "-10.00",
                      price: "650 USD",
                      increase: false,
                      iconPath: "",
                    ),
                    PriceTile(
                      name: "BTC",
                      market: "+4.00",
                      price: "8000 USD",
                      increase: true,
                      iconPath: "",
                    ),
                    PriceTile(
                      name: "ETH",
                      market: "-10.00",
                      price: "650 USD",
                      increase: false,
                      iconPath: "",
                    ),
                    PriceTile(
                      name: "BTC",
                      market: "+4.00",
                      price: "8000 USD",
                      increase: true,
                      iconPath: "",
                    ),
                    PriceTile(
                      name: "ETH",
                      market: "-10.00",
                      price: "650 USD",
                      increase: false,
                      iconPath: "",
                    ),
                    PriceTile(
                      name: "BTC",
                      market: "+4.00",
                      price: "8000 USD",
                      increase: true,
                      iconPath: "",
                    ),
                    PriceTile(
                      name: "ETH",
                      market: "-10.00",
                      price: "650 USD",
                      increase: false,
                      iconPath: "",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "News",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 3,
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
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
        ],
      ),
    );
  }
}
