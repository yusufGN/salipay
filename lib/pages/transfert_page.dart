import 'dart:math';

import 'package:flutter/material.dart';
import 'package:salipay/pages/transfert_personne.dart';

class TransfertPage extends StatefulWidget {
  const TransfertPage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<TransfertPage> createState() => _TransfertPageState();
}

class _TransfertPageState extends State<TransfertPage> {
  // La liste des contacts
  List<Map<String, dynamic>> Contact = [
    {
      "nom": "Mamadou Aliou",
      "contact": "620793988",
      "image": NetworkImage(
          "https://static.vidnoz.com/designer/asset/202309/6502efc0e27d5.jpg"),
      "abreviation": "MA",
    },
    {
      "nom": "Mamadou diaby",
      "contact": "664891789",
      "image": NetworkImage(
          "https://static.vidnoz.com/designer/asset/202309/6502efc0e27d5.jpg"),
      "abreviation": "MD",
    },
    {
      "nom": "Zézé kopogou",
      "contact": "625454890",
      "image": NetworkImage(
          "https://static.vidnoz.com/designer/asset/202309/6502efc0e27d5.jpg"),
      "abreviation": "ZK",
    },
    {
      "nom": "James Soumah",
      "contact": "628254335",
      "image": NetworkImage(
          "https://static.vidnoz.com/designer/asset/202309/6502efc0e27d5.jpg"),
      "abreviation": "JS",
    }
  ];

// Liste des recents transferts
  List<Map<String, dynamic>> Recent = [
    {
      "nom": "Maria Sylla",
      "jour": "Monday",
      "image": NetworkImage(
          "https://static.vidnoz.com/designer/asset/202309/6502efc0e27d5.jpg"),
    },
    {
      "nom": "Yusuf Diaby ",
      "jour": "Mercredi",
      "image": NetworkImage(
          "https://static.vidnoz.com/designer/asset/202309/6502efc0e27d5.jpg"),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              padding: EdgeInsets.all(80),
              child: Text(
                "Transfert",
              ),
            )),
        backgroundColor: Colors.white,
        body: ListView(children: [
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.only(left: 9),
            decoration: BoxDecoration(
              color: const Color.fromARGB(99, 202, 200, 200),
              borderRadius: BorderRadius.circular(11),
              // border: Border(bottom: BorderSide(width: 0)),
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                  hintText: "Search"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Recent Transfert",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection:
                      Axis.horizontal, // Définit le défilement horizontal
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                          Recent.length,
                          (index) => Container(
                                margin: EdgeInsets.all(3),
                                width: 108,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(19, 136, 134, 134),
                                    borderRadius: BorderRadius.circular(8)),
                                child: InkWell(
                                  onTap: () {
                                    // Handle the tap event
                                    print('Container clicked');
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: 10,
                                        left: 21,
                                        right: 21,
                                        bottom: 5),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: (Recent[index]
                                              ['image']),
                                        ),
                                        Text(
                                          Recent[index]['nom'],
                                          textAlign: TextAlign.center,
                                          overflow: TextOverflow
                                              .ellipsis, //Permet de gérer l'affichage du texte lorsqu'il dépasse la largeur du conteneur
                                          maxLines:
                                              2, //permet d'afficher le nombre de line que le conteneur peut prendre
                                        ),
                                        Text(Recent[index]['jour'])
                                      ],
                                    ),
                                  ),
                                ),
                              ))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "All",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  "Salipay",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  "Favorite",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "AddNew",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 15, 141, 245)),
                              ))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(
                            Contact.length,
                            (index) => ListTile(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return TransfertPersonne(
                                          title: 'Toi',
                                          nom: Contact[index]['nom'],
                                          image: Contact[index]['image'],
                                          contact: Contact[index]['contact'],
                                        );
                                      },
                                    ));
                                  },
                                  leading: CircleAvatar(
                                    child: Text(Contact[index]['abreviation']),
                                  ),
                                  title: Text(Contact[index]['nom']),
                                  subtitle: Text(Contact[index]['contact']),
                                )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
