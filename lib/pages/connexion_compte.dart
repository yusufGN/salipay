import 'package:flutter/material.dart';
import 'package:salipay/pages/verificationCode.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ConnexionCompte extends StatefulWidget {
  const ConnexionCompte({super.key, required this.title});

  final String title;

  @override
  State<ConnexionCompte> createState() => _ConnexionCompteState();
}

class _ConnexionCompteState extends State<ConnexionCompte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //   title: Text(widget.title),
        // ),
        body: Center(
      child: Padding(
        padding: EdgeInsets.all(70),
        child: Column(
          children: [
            Text(
              "Bienvenue chez Salipay! Pour commencer, entrez votre numéro de mobile ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            IntlPhoneField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "6XX XXX XXX",
              ),
              initialCountryCode: "GN",
              dropdownIconPosition: IconPosition.trailing,
              disableLengthCheck: false,
            ),
            SizedBox(
              height: 297,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Verificationcode(title: 'title');
                }));
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 50),
                  backgroundColor: Color(0xFF6BD6E4)),
              child: Text(
                "Suivant",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
