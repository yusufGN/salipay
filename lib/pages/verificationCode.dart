import 'package:flutter/material.dart';
import 'package:salipay/pages/page_accueil.dart';
import 'package:pinput/pinput.dart';

class Verificationcode extends StatefulWidget {
  const Verificationcode({super.key, required this.title});

  final String title;

  @override
  State<Verificationcode> createState() => _VerificationcodeState();
}

class _VerificationcodeState extends State<Verificationcode> {
  @override
  Widget build(BuildContext context) {
    // Définir un thème personnalisé pour Pinput
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: TextStyle(
        fontSize: 20,
        color: Colors.black, // Couleur du texte
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF24C6F7), // Couleur de la bordure en bas
            width: 1.0, // Épaisseur de la bordure
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(''),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          // Vos widgets ici, par exemple :

          Container(
            child: Text(
              "Entrez le code de validation envoyé par ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          Text(
            "SMS au 610 032 084",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 20,
          ),
          Pinput(
            length: 4,
            defaultPinTheme: defaultPinTheme, //Applique le thème personnalisé
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Renvoyer SMS",
                style: TextStyle(color: Color.fromARGB(255, 114, 207, 235)),
              ))
          // Ajoutez d'autres widgets si nécessaire
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Action lors de la validation
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PageAccueil(title: 'title');
            }));
          },
          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF24C6F7)),
          child: Text(
            'Valider',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
