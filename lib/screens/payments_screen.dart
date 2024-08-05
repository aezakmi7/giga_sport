import 'dart:io';
import 'package:flutter/material.dart';
import 'package:giga_sport_flutter/widgets/pay_buttons.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String os = Platform.operatingSystem;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 75, 75, 75),
                    Color.fromARGB(255, 175, 175, 175),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text(
                    'Giga Sport Line',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Date: 12.04 - 16.04 2023'),
                          SizedBox(height: 5),
                          Text('Duration: 30 days'),
                          SizedBox(height: 5),
                          Text('Hours: 8 hours/day'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('8/30'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Реєстрація'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Деталі'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Platform.isIOS ? applePayButton : googlePayButton,
      ],
    );
  }
}
