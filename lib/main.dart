import 'package:flutter/material.dart';
import 'package:salipay/pages/connexion_compte.dart';
import 'package:salipay/pages/creation_compte.dart';
import 'package:salipay/pages/home_page.dart';
import 'package:salipay/pages/verificationCode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salipay',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 248, 248, 248)),
        useMaterial3: true,
      ),
      home: const ConnexionCompte(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}
