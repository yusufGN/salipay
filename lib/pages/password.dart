import 'package:flutter/material.dart';

class PasswordApp extends StatefulWidget {
  const PasswordApp({super.key, required this.title});

  final String title;

  @override
  State<PasswordApp> createState() => _PasswordAppState();
}

class _PasswordAppState extends State<PasswordApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("BONjours"),
    ));
  }
}
