import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TotalPayButton extends StatelessWidget {
  // const TotalPayButton({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '250,55 USD',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          _BtnPay()
        ],
      ),
    );
  }
}

class _BtnPay extends StatelessWidget {
  // const _BtnPay({super.key});

  @override
  Widget build(BuildContext context) {
    return true ? buildBotonTarjeta(context) : buildAppleAndGooglePay(context);
  }

  Widget buildBotonTarjeta(BuildContext context) {
    return MaterialButton(
        minWidth: 170,
        height: 45,
        shape: const StadiumBorder(),
        elevation: 0,
        color: Colors.black,
        child: const Row(
          children: [
            Icon(
              FontAwesomeIcons.solidCreditCard,
              color: Colors.white,
            ),
            Text('  Pagar',
                style: TextStyle(fontSize: 22, color: Colors.white)),
          ],
        ),
        onPressed: () {});
  }

  Widget buildAppleAndGooglePay(BuildContext context) {
    return MaterialButton(
        minWidth: 150,
        height: 45,
        shape: const StadiumBorder(),
        elevation: 0,
        color: Colors.black,
        child: Row(
          children: [
            Icon(
              Platform.isAndroid
                  ? FontAwesomeIcons.google
                  : FontAwesomeIcons.apple,
              color: Colors.white,
            ),
            const Text(' Pay',
                style: TextStyle(fontSize: 22, color: Colors.white)),
          ],
        ),
        onPressed: () {});
  }
}
