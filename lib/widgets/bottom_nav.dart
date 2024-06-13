import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sacuit_exchange/pages/home/home_page.dart';
import 'package:sacuit_exchange/pages/settings/settings.dart';
import 'package:sacuit_exchange/pages/transactions/transactions.dart';
import 'package:sacuit_exchange/pages/wallet/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const WalletScreen(),
    const Trade(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Set background to transparent
      body: Stack(
        children: [
          _widgetOptions.elementAt(_selectedIndex), // Body content
          Positioned(
            left: 0,
            right: 0,
            bottom: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: SafeArea(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      Container(
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14.0, vertical: 8),
                          child: GNav(
                              color: Theme.of(context).primaryColorDark,
                              gap: 10,
                              activeColor: Theme.of(context).primaryColorDark,
                              iconSize: 24,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              duration: const Duration(milliseconds: 800),
                              tabBackgroundColor: Theme.of(context)
                                  .primaryColorDark
                                  .withOpacity(0.1),
                              tabs: const [
                                GButton(
                                  icon: Icons.home_outlined,
                                  text: 'Home',
                                ),
                                GButton(
                                  icon: Icons.credit_card_outlined,
                                  text: 'Wallet',
                                ),
                                GButton(
                                  icon: Icons.compare_arrows_outlined,
                                  text: 'Trade',
                                ),
                                GButton(
                                  icon: Icons.settings_outlined,
                                  text: 'Settings',
                                ),
                              ],
                              selectedIndex: _selectedIndex,
                              onTabChange: (index) {
                                setState(() {
                                  _selectedIndex = index;
                                });
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
