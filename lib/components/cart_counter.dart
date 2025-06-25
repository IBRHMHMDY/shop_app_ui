import 'package:flutter/material.dart';
import 'package:shop_app_ui/components/btn_counter.dart';
import 'package:shop_app_ui/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        btnCounter(Icons.add, () {
          // Increase counter logic
          setState(() {
            numItems++;
          });
        }),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: kTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        btnCounter(Icons.remove, () {
          // Decrease counter logic
          setState(() {
            if (numItems > 1) {
              numItems--;
            }
          });
        }),
      ],
    );
  }
}
