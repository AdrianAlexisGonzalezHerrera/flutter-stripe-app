import 'package:flutter/material.dart';

import 'package:flutter_credit_card/flutter_credit_card.dart';

import 'package:stripe_app/data/tarjetas.dart';
import 'package:stripe_app/helpers/helpers.dart';
import 'package:stripe_app/pages/pages.dart';
import 'package:stripe_app/widgets/total_pay_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Pagar'),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () async {
                // mostrarLoading(context);
                // await Future.delayed(Duration(seconds: 1));
                // Navigator.pop(context);
                mostrarAlerta(context, 'Cargando', 'Procesando La Información');
              },
            )
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              width: size.width,
              height: size.height,
              top: 200,
              child: PageView.builder(
                  controller: PageController(viewportFraction: 0.9),
                  physics: const BouncingScrollPhysics(),
                  itemCount: tarjetas.length,
                  itemBuilder: (_, i) {
                    final tarjeta = tarjetas[i];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, navegarFadeIn(context, TarjetaPage()));
                      },
                      child: Hero(
                        tag: tarjeta.cardNumber,
                        child: CreditCardWidget(
                            cardNumber: tarjeta.cardNumber,
                            expiryDate: tarjeta.expiracyDate,
                            cardHolderName: tarjeta.cardHolderName,
                            cvvCode: tarjeta.cvv,
                            showBackView: false,
                            isHolderNameVisible: true,
                            isSwipeGestureEnabled: false,
                            onCreditCardWidgetChange: (CreditCardBrand) {}),
                      ),
                    );
                  }),
            ),
            Positioned(bottom: 0, child: TotalPayButton())
          ],
        ));
  }
}
