import 'package:flutter/material.dart';
import 'package:sacuit_exchange/widgets/app_button.dart';
import 'package:sacuit_exchange/widgets/app_textfield.dart';

class BuyBottomSheet extends StatelessWidget {
  const BuyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      height: 400,
      child: ListView(
        children: [
          Center(
            child: Text(
              'BUY',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          AppTextfield(
            label: "Currency",
            hint: "BTC",
            controller: TextEditingController(),
          ),
          SizedBox(height: 28),
          Center(
            child: Icon(
              Icons.compare_arrows_outlined,
              color: Theme.of(context).primaryColorDark,
            ),
          ),
          AppTextfield(
            label: "Price",
            hint: "0.00",
            controller: TextEditingController(),
          ),
          SizedBox(height: 30),
          Center(
            child: AppButton(
              text: "BUY",
              width: 200,
            ),
          )
        ],
      ),
    );
  }
}
