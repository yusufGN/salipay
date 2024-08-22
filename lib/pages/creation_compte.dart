import 'package:flutter/material.dart';
import 'package:salipay/pages/home_page.dart';

class CreationCompte extends StatefulWidget {
  const CreationCompte({super.key, required this.title});

  final String title;

  @override
  State<CreationCompte> createState() => _CreationCompteState();
}

class _CreationCompteState extends State<CreationCompte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "Tapez votre nom", border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Entrez votre email",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Entrez votre mot de passe",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Confirmez votre mot de passe",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return MyHomePage(title: "Page d'accueil");
                  }));
                },
                child: Text("Continuez"))
          ],
        ));
  }
}
