import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PagoCompletoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pago Realizado ...!'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.star,
              color: Colors.white54,
              size: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Pago Realizado Correctamente ...!',
              style: TextStyle(color: Colors.white, fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
