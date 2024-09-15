import 'package:flutter/material.dart';
import 'package:salipay/pages/transfert_page.dart';


class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key, required this.title});

  final String title;

  @override
  State<PageAccueil> createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
// La liste pour la balance
  Map<String, dynamic> User = {
    "solde": 500000,
    "nom1": "Yusuf Diaby",
    "numero": 664891799,
  };

// la liste des recentes personnes contacté
  List<Map<String, dynamic>> Recent = [
    {
      "image": NetworkImage(
          "https://static.vidnoz.com/designer/asset/202309/6502efc0e27d5.jpg"),
      "nom": "Mamadou Diaby Sylla Sow Barry",
      "jour": "Lundi"
    },
    {
      "image": NetworkImage(
          "https://static.vidnoz.com/designer/asset/202309/6502efc0e27d5.jpg"),
      "nom": "Mamadou Barry ",
      "jour": "Lundi"
    },
    {
      "image": NetworkImage(
          "https://static.vidnoz.com/designer/asset/202309/6502efc0e27d5.jpg"),
      "nom": " Mamadou Aliou Barry Kourouma Toure Camara",
      "jour": "Jeudi"
    }
  ];

  // La des historiques de transfert
  List<Map<String, dynamic>> Transaction = [
    {
      "date": "12/09/2023",
      "nom": "Diallo Oumar",
      "montant": "2.000.000",
      "jour": "Lundi",
      "symbole": Icons.money
    },
    {
      "date": "1/01/20224",
      "nom": "Barry Mamadou Aliou",
      "montant": "5.000.000",
      "jour": "Vendrdi",
      "symbole": Icons.money
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
                "https://static.vidnoz.com/designer/asset/202309/6502efc0e27d5.jpg"),
            // backgroundColor: Colors.grey,
          ),
        ),
        title: Center(
          child: Text("Digidaw"),
        ),
        actions: [
          SizedBox(
            width: 20,
            height: 20,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          //Pour la carte

          Container(
            height: 220,
            width: 100,
            margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
                color: const Color(0xFF2196F3),
                borderRadius: BorderRadius.circular(8)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Balance",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w100),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                User["solde"].toString(),
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Card",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w100),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  // margin: EdgeInsets.all(9.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 39,
                            padding: EdgeInsets.all(23),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    const Color(0xFF2196F3),
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
                          SizedBox(
                            width: 10, //Pour mettre de l'espace entre eux
                          ),
                          Column(
                            children: [
                              Text(
                                User["nom1"],
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                              Text(
                                User["numero"].toString(),
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
                            style: TextStyle(
                                color: const Color.fromARGB(255, 15, 141, 245)),
                          ))
                    ],
                  )),
            ]),
          ),

          //Pour les boutons
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Premier bouton "Dépôt"
                Column(children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.wallet_outlined,
                          ),
                          color: const Color.fromARGB(255, 197, 192, 192),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Dépôt",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )
                ]),
                // Deuxième bouton "Démande"
                Column(children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.request_page_outlined),
                          color: const Color.fromARGB(255, 197, 192, 192),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Démande",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )
                ]),

                //Troisième bouton "Transfert"
                Column(children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // Action pour aller sur la apge de transfert
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const TransfertPage(title: 'Moi',
                              );
                            }));
                          },
                          icon: Icon(Icons.send_outlined),
                          color: const Color.fromARGB(255, 197, 192, 192),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Transfert",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )
                ])
              ],
            ),
          ),

          // La liste des Recents Transfert
          Container(
            // margin: EdgeInsets.all(15.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Recent Transfert",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.only(left: 15),
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
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
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
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Historique des Transactions",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        Transaction.length,
                        (index) => ListTile(
                            onTap: () {},
                            leading: CircleAvatar(
                                child: Icon(Transaction[index]['symbole'])),
                            title: Text(Transaction[index]['nom']),
                            subtitle: Text(Transaction[index]['date']),
                            trailing: Column(
                              children: [
                                Text(Transaction[index]['montant']),
                                Text(Transaction[index]['jour'])
                              ],
                            )),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
