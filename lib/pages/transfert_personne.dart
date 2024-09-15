import 'dart:math';

import 'package:flutter/material.dart';
import 'package:salipay/pages/verificationCode.dart';

class TransfertPersonne extends StatefulWidget {
  const TransfertPersonne({
    super.key,
    required this.title,
    required this.nom,
    required this.image,
    required this.contact,
   
  });

  final String title;

  final String nom;
  final NetworkImage image;
  final String contact;
  

  @override
  State<TransfertPersonne> createState() => _TransfertPersonneState();
}

class _TransfertPersonneState extends State<TransfertPersonne> {
  // Les variables dans lesquelles nous allons stocker nos valeurs dans textfield
  final _montantEnvoyerController = TextEditingController();

  // Méthode pour ajouter un chiffre ou un symbole au montant actuel
  void _ajouterUnMontant(String value) {
    setState(() {
      _montantEnvoyerController.text += value;
    });
  }

  // Méthode pour supprimer le dernier caractère du montant
  void _supprimerUnMontant() {
    setState(() {
      if (_montantEnvoyerController.text.isNotEmpty) {
        _montantEnvoyerController.text = _montantEnvoyerController.text
            .substring(0, _montantEnvoyerController.text.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Container(
          padding: EdgeInsets.all(80),
          child: Text(
            "Transfert",
          ),
        )),
        backgroundColor: const Color.fromARGB(255, 245, 244, 244),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                  child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://static.vidnoz.com/designer/asset/202309/6502efc0e27d5.jpg"),
              )),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Text(
                    widget.nom,
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  Text(
                    widget.contact,
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 200,
                          child: Center(
                            child: TextField(
                              controller: _montantEnvoyerController,
                              keyboardType: TextInputType.none,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  hintMaxLines: 20,
                                  hintText: "300.000",
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(fontSize: 20)),
                            ),
                          )),
                      Text("GNF")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 180,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your Balance ",
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                        Text(
                          "625.000",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 106, 220, 235)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: const EdgeInsets.all(16.0),
                      padding: const EdgeInsets.all(14.0),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 224, 238, 250),
                          border: Border.all(width: 0.1),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  padding: const EdgeInsets.all(23),
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFF2196F3),
                                          Colors.black
                                        ],
                                        begin: Alignment
                                            .topCenter, // Début du dégradé à gauche
                                        end: Alignment
                                            .bottomCenter, // Fin du dégradé à droite
                                        stops: [
                                          0.5,
                                          0.5
                                        ], // Répartition égale des couleurs
                                      ),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text("S"),
                                ),
                                const SizedBox(
                                  height: 2,
                                  width: 10, //Pour mettre de l'espace entre eux
                                ),
                                Column(
                                  children: [
                                    Text(
                                      widget.nom,
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 18,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      widget.contact,
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 126, 124, 124)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Change",
                                  style: TextStyle(color: Colors.blueAccent),
                                ))
                          ])),

                  // Pour les boutons
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 370,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: 50,
                                          right: 50,
                                          bottom: 15),
                                      foregroundColor:
                                          const Color.fromARGB(255, 12, 12, 12),
                                      backgroundColor: const Color.fromARGB(
                                          255, 219, 218, 218),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    _ajouterUnMontant("1");
                                  },
                                  child: Text("1"),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: 50,
                                          right: 50,
                                          bottom: 15),
                                      foregroundColor:
                                          const Color.fromARGB(255, 12, 12, 12),
                                      backgroundColor: const Color.fromARGB(
                                          255, 219, 218, 218),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    _ajouterUnMontant("2");
                                  },
                                  child: Text("2"),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: 50,
                                          right: 50,
                                          bottom: 15),
                                      foregroundColor:
                                          const Color.fromARGB(255, 12, 12, 12),
                                      backgroundColor: const Color.fromARGB(
                                          255, 219, 218, 218),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    _ajouterUnMontant("3");
                                  },
                                  child: Text("3"),
                                ),
                              ],
                            ),
                            // Pour la 2 ligne
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: 50,
                                          right: 50,
                                          bottom: 15),
                                      foregroundColor:
                                          const Color.fromARGB(255, 12, 12, 12),
                                      backgroundColor: const Color.fromARGB(
                                          255, 219, 218, 218),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    _ajouterUnMontant("4");
                                  },
                                  child: Text("4"),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: 50,
                                          right: 50,
                                          bottom: 15),
                                      foregroundColor:
                                          const Color.fromARGB(255, 12, 12, 12),
                                      backgroundColor: const Color.fromARGB(
                                          255, 219, 218, 218),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    _ajouterUnMontant("5");
                                  },
                                  child: Text("5"),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: 50,
                                          right: 50,
                                          bottom: 15),
                                      foregroundColor:
                                          const Color.fromARGB(255, 12, 12, 12),
                                      backgroundColor: const Color.fromARGB(
                                          255, 219, 218, 218),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    _ajouterUnMontant("6");
                                  },
                                  child: Text("6"),
                                ),
                              ],
                            ),
                            // Pour la 3 ligne
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: 50,
                                          right: 50,
                                          bottom: 15),
                                      foregroundColor:
                                          const Color.fromARGB(255, 12, 12, 12),
                                      backgroundColor: const Color.fromARGB(
                                          255, 219, 218, 218),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    _ajouterUnMontant("7");
                                  },
                                  child: Text("7"),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: 50,
                                          right: 50,
                                          bottom: 15),
                                      foregroundColor:
                                          const Color.fromARGB(255, 12, 12, 12),
                                      backgroundColor: const Color.fromARGB(
                                          255, 219, 218, 218),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    _ajouterUnMontant("8");
                                  },
                                  child: Text("8"),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: 50,
                                          right: 50,
                                          bottom: 15),
                                      foregroundColor:
                                          const Color.fromARGB(255, 12, 12, 12),
                                      backgroundColor: const Color.fromARGB(
                                          255, 219, 218, 218),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    _ajouterUnMontant("9");
                                  },
                                  child: Text("9"),
                                ),
                              ],
                            ),
                            // Pour la dernière ligne
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: 50,
                                          right: 50,
                                          bottom: 15),
                                      foregroundColor:
                                          const Color.fromARGB(255, 12, 12, 12),
                                      backgroundColor: const Color.fromARGB(
                                          255, 219, 218, 218),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    _ajouterUnMontant(".");
                                  },
                                  child: Text("."),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          top: 15,
                                          left: 50,
                                          right: 50,
                                          bottom: 15),
                                      foregroundColor:
                                          const Color.fromARGB(255, 12, 12, 12),
                                      backgroundColor: const Color.fromARGB(
                                          255, 219, 218, 218),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    _ajouterUnMontant("0");
                                  },
                                  child: Text("0"),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.only(
                                          top: 13,
                                          left: 40,
                                          right: 40,
                                          bottom: 13),
                                      foregroundColor:
                                          const Color.fromARGB(255, 12, 12, 12),
                                      backgroundColor: const Color.fromARGB(
                                          255, 219, 218, 218),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  onPressed: () {
                                    _supprimerUnMontant();
                                  },
                                  child: Icon(Icons.delete_forever),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 340,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF24C6F7),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0))),
                                  onPressed: null,
                                  child: Text(
                                    "Continuer",
                                    style: TextStyle(fontSize: 16),
                                  )),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
