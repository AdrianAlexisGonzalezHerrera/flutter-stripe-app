import 'package:flutter/material.dart';
import 'package:stripe_app/pages/pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stripe App',
      initialRoute: 'home',
      // initialRoute: 'pago_completo',
      routes: {
        'home': (_) => HomePage(),
        'pago_completo': (_) => PagoCompletoPage()
      },
      theme: ThemeData.light().copyWith(
          primaryColor: Color(0xff284879),
          scaffoldBackgroundColor: Color(0xff21232A)),
    );
  }
}
