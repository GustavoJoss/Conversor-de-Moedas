import 'package:conversor_de_moedas/pages/coin_converter.dart';
import 'package:conversor_de_moedas/repositories/urlKey.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Certifica-se de que a inicialização do Flutter esteja completa
  Map<String, dynamic> data = await getData(); // Obtém os dados da API
  print(data["results"]["currencies"]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CoinConverter(),
      debugShowCheckedModeBanner: false,
    );
  }
}