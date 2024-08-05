import 'package:flutter/material.dart';
import 'package:giga_sport_flutter/utilities/payment_configurations.dart';
import 'package:pay/pay.dart';

var applePayButton = ApplePayButton(
  paymentConfiguration: PaymentConfiguration.fromJsonString(
    defaultApplePay,
  ),
  paymentItems: [
    PaymentItem(
      label: 'Total',
      amount: '1.00',
      status: PaymentItemStatus.final_price,
    ),
  ],
  style: ApplePayButtonStyle.white,
  type: ApplePayButtonType.buy,
  width: double.infinity,
  height: 50,
  margin: const EdgeInsets.all(15),
  onPaymentResult: (result) => print(result),
  loadingIndicator: const Center(
    child: CircularProgressIndicator(),
  ),
);

var googlePayButton = GooglePayButton(
  paymentConfiguration: PaymentConfiguration.fromJsonString(
    defaultGooglePay,
  ),
  paymentItems: [
    PaymentItem(
      label: 'Total',
      amount: '1.00',
      status: PaymentItemStatus.final_price,
    ),
  ],
  width: double.infinity,
  height: 50,
  theme: GooglePayButtonTheme.light,
  margin: const EdgeInsets.all(15),
  onPaymentResult: (result) => print(result),
  loadingIndicator: const Center(
    child: CircularProgressIndicator(),
  ),
);
