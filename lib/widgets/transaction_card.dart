import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class TransactionCard extends StatelessWidget {
  final String title;
  final String amount;

  const TransactionCard({
    super.key,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: 200,
      width: double.maxFinite,
      color: Colors.lightBlue,
      borderRadius: BorderRadius.circular(20),
      borderColor: Colors.transparent,
      isFrostedGlass: true,
      frostedOpacity: 0.05,
      blur: 20,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0xFF0000FF).withOpacity(0.5), // Blue with opacity
          const Color(0xFF800080).withOpacity(0.5), // Purple with opacity
        ],
      ),
      borderWidth: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[200],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: GlassContainer.frostedGlass(
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
                    height: 40,
                    width: 80,
                    borderColor: Colors.transparent,
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.lightBlue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Text(
                            "USD",
                            style: TextStyle(
                              color: Colors.grey[200],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Text(
              amount,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: GlassContainer.clearGlass(
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
                    borderColor: Colors.transparent,
                    height: 40,
                    width: 90,
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.lightBlue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Text(
                            "Transfer",
                            style: TextStyle(
                              color: Colors.grey[200],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: GlassContainer.clearGlass(
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
                    borderColor: Colors.transparent,
                    height: 40,
                    width: 90,
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.lightBlue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Text(
                            "Deposit",
                            style: TextStyle(
                              color: Colors.grey[200],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: GlassContainer.clearGlass(
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
                    borderColor: Colors.transparent,
                    height: 40,
                    width: 90,
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.lightBlue,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Text(
                            "Withdraw",
                            style: TextStyle(
                              color: Colors.grey[200],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
