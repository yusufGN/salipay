import 'package:flutter/material.dart';
import 'package:salipay/pages/transfert_page.dart';

class PageAccueil extends StatefulWidget {
  const PageAccueil({super.key, required this.title});

  final String title;

  @override
  State<PageAccueil> createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
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
                " \$625.00",
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
                                "Wawan Setiawan",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                              Text(
                                "7732346719087162",
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
                          child: Text(
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
                          icon: Icon(Icons.request_page_outlined),
                          color: const Color.fromARGB(255, 197, 192, 192),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
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
                              return TransfertPage(title: '');
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
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 23, right: 23, bottom: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(19, 136, 134, 134),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                              backgroundColor: Colors.grey,
                            ),
                            Text(
                              "Maria",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Today",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 23, right: 23, bottom: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(19, 136, 134, 134),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                              backgroundColor: Colors.grey,
                            ),
                            Text(
                              "Yusuf",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "June, 1",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 23, right: 23, bottom: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(19, 136, 134, 134),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhIVFhUVFRUXFRUVFxUWFRUVFRUWFhUVFxYYHiggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGC0lHyUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLSstLS0tLf/AABEIAOEA4AMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQMEBQYCBwj/xABIEAABAwEEBgcEBgcFCQAAAAABAAIRAwQSITEFQVFhcZEGEyKBobHBBzLR8EJSYqKy4SQzY3JzgvEUFSOSwhY0Q0Vkg6Oz0v/EABgBAAMBAQAAAAAAAAAAAAAAAAABAgME/8QAIhEBAQACAgMAAwEBAQAAAAAAAAECMREhAxJBEyJRMkIE/9oADAMBAAIRAxEAPwD2lCEKkhCEIAQhCAEIQgEQhBQAqTSvSyxWZ1ytaGNdhhiYvGBMZCVmumftCbZnVbNTB60NbdeIutvNmTtI2Lwq06QJc6+ZxJMgEnEujHVKuY/1Ny/j3zpF7SLJSY4UKnWVC3sXcpO0nARmsdZPa5aW039aymXwAw5Y49p4HcI3Lyq0V5I8YwwkEb0jqzTtx1yeeKfSe3t/Rf2stqOFO10wwkYVafu6ovMOWBzBK19DplY6lRlOnVa81H9WLpGDiCRIJkjCJE4r5bq2hwd65c4Ttj0g5rw5hIIILSDiHA5g6il0fb6/QvM/ZD0ofXFanXqTUDmua0kkhhBlwLiS7GJ2YL0wFKzhUvIQhCkwkQhACEIQAkQhAIhCEA8hCEAIQhACEIQAkQhACoulfSSlY6ZLnC/cc5rdZAgZcSB3q9K8l9tFoaGUwffe7OJ7DBJbOvtOaY3cFWE7LJ5PpC0dZUe4nBznk4zmSVWVYP0uWZOWQUmoC5xEROreYU2z6Ce+CGnuGWvHinleNjHG3SmNOI7WZ9MfngkeOPznPgtTR6L1CPccNkYkTOE8gmbZ0YtAM3HY5Yg88cFHtF/jy/jNudhjrSdZqbhtV4OjlY/QjiQU6zQlOmSa77oxwbiZ4nJEylF8diksOkqtneyrScW1GG80jbw1g6wcCvqrorpYWmhTqjKpTY8brwxHcZHcV83W02RzLrKDw6PfL5nfAwXp3sV05epGyuPaoGWar1GocBvLXyP5wtN9M7129bQka6RIyKVZqCEiEAqRCEAJEIQAhCRAPoQkQCoQkQCpEIQAhCEBzUOC8V9s1ovWijSAPYpl26alTPuDAvaK5w714h7RnF+kHj6rKTZj7AeRvOJV46K90nQ7ozRNBteo2TeMA7pEu261pmUQcAABsAUPQrwyyUwPtHm4lS7FWxWGV5rrwnET22VoGSg21gKtHPwyVbaHFFglUlppjFVVcN1gEbxKtNIPiVnrVXUNPiu6TWGkKQqMYGkOxgRMzn8U10B0kaOkKDwcHv6t+yKvYH3+rPcpVtqh1JzfnDFZp4LO20wWdtu4tN4eS6MK4/Ji+qrBW95mw4cDj6qYqGwWmS2oPpMY7uc0K8lVlGeNKhIhSoqEiEgVIhCYCEIQDyEISAQhCAEIQgBCEIBi0u9V430nspqW6tGfWNA/yMAhexVx2u6PnmvOa1L9PfP0g2oOFws82OVzQm1c2n1dNrAZjCd+JJ5lPWR2IxRb7rJc9wa0azgFS1elNnaYB/Nc/F5dftJGxNTBQakuVJZullB5gOg78E9a9NtaMCIRaJOdONJ0cCVkrYxxJAHMwutM9MSCWtxOs6uCy1bSNWqcXXRySmIucnS8aCDDterMHgomlaAY1xGV0keKXRj3ghlTHK67fsKl9ImxSb9o3ea3x0wze7aOp3WU27KTB/laAr6zPlo3KnAiP3fIhWVkctMnPilyiVzKJWa3SFzKWUAqEkoQZUJEqAfQhCQCEIQAhCEAIQhARq2a8xFrDtIVGS6/RqVabgYu3HB1Wnd3AOA716bWznj5ryfTFje3Tji0wxzWVX4Z3qRpQe8DkjK8RfjnNqF0ms/WGSCbowzIG8NGZWN0rQcKQu2Vz+sE03y57sDBa9tNwbSMYwQ45b49ZZREkHWqm3dGajibtZoaTMGnePmAsPbvt03DmdV5vR6OVGVLoLXNETdJ2TGOvVrWu0x0Ya2zB4e6dk7le2bo8yzgOMucfpOzjYAMGjgn9L1AaBbCjLPtph4+nlfRvo4bRV7Ra1ocbzn+60TEkDFx3YbSQnNL2Rza5otBa1l+++oxlw3XOuOYW4uYW3MZmSVc2NoDiIxOzDkQu6+g77pNUgawQJ5jNX7xn+G/KzliY5wBuxCl6fJNKl/GYOat7RZ2UhdbzVVpcS2i3bXp+cLTx5cs/LjxHvbtXA+SmUnZHh4qKY7JTwPZO4eU/BdNcUWEolcSllZtHUpZXEpZQHUpZXKJSDtC5RKAkpUiEjCEIQAhCEAIQhAR6q8/6aWcttrKrSRNEAgTBDKkkHZ769AqjBYH2m0HH+yuaSAa3VvicWPglsjH6Cq4+04PDL1y5NWmrBlOt0sGgnMquqVJYDuVXRdLgDlK585xXX47LO1nbtOWZgDq9YBxyBIEkahOpMaZ6TWc2YQAZxDgQZCi6dqUKhbTFHrXgZNA7I2uJwbmqnS+hadSmXOotZlDW1mXTrMkOi9lyU+kqvyWaVB01Qc2Q4XwS4QRgRt3K7qWwOpteNYWLq2Ok111zCzHCcQe8YFWte0QwNBwARcRjnfpbRaLxhNV5dWszQCYr0iY2B7ZKj2c4qw0DLrXT2XmDm8GPuldHixc3my5e8HIbsU7TGHcuSMF3RyWzmPUj2RwC7lRbNU95v1THccfipAKinHYKWVwClBSN3KVcgpUG6SrlKgJSEIUmEIQgBCEIAQUJHIBlyyvTuleoMP1atM5cR6rVlUHSmnesztxaeTwtMdprG2pty6Dk9uB+0MD6KnrGLx3K06YSLNRqNza+O4tdh90Kjo2gVGyO9Zeadujw5fqrdDaIttQdZTfTIe4vLXuLSTENOAMjZxK0R6LWlwBcSHTsBHEEboTGjnuFIBuBZIGvu4KLben9roQx1Ek5AtdhyWe20kkZzTWgLWHOvtY0Y4ufnvLQMFVUZa64TIjA7VY2zSFotNQvrSATMYydyr7TUl2WITn8TlxuHw+ASrHoNbGutTKJBvOrU3tcIgdWyreB43hyWdt1phsK39lrL2kaW68fuOA81vh1ZHN5b0+iKwwhdUcklowG8LqnkqZITal20Fup9MEcWuPo4KeCqXS7yyrRfsJaeBj4FWwciwQ8CugUyCuwVJnQV0CmwV0CkbsJVwCukBLSpEKVFQhCAEIQgBIUqRyAYcqnTzJs9UD6pPLFWz1At7L1OoNrT4tWmO01gOlsGwMOyoz1HqsV2qRvDLWPULU9M68aOomf+LS75JHxVRZmtfTg7M9Y+dijzXjJt4Jzib0BpxjXPBj3suICtLbpai6MG4ZHBY3TOinNJLM8xGEnX37tyz1qLxN68IJ2x871HEvcX7XHcbHTGlqUG7B3rH1rZJLjlqUN1o7+KZe8lOYyIyzuQqvLitz7GKc6QO6i894c0DzWIa1ej+w2hNrrv8Aq0Wj/M+f9KvC/szynT2y05d/lj6Lun7q4tJw+CcpjsicFfxn9VHSBnYB+q5p8Y9VIsdWWNO7yXOmmXqNTDJpPLH0UTRNTsx3qv8AlN2tWlOAqO1ycaVCj4K7BTIK7BSM6Cuk2CugkachCFKghCVACEJCgBI8pt1XZzTbc0+CK5RqmII2j4qU7JQ2Oz7/AJ8VUKvHPaPULdH0W7LQwH+UP+CpdEWuWj5IVz7WBFnuY4Wk/wCr/wClkNFv7IKjz/6bf+fTSWgz9oePhms/pNsTGI2K3pV8MU1awxwyE74WMdFjE1aeJwhcspK5ttnA2KHchacsfVHc1ep+wmhjan/wWzvHWE+YXmLWElexexWhdo2j+KwcmfmqwvaM5+vL0W1HAx8EoMaktdBJWrA1WZeDhmC0jmIWd0PW7DOR5BaZoz4LLWCAXN+q5w5OIV4/U5Lxrk61yqrC66SG5A4N1CcYA1YEZKyY8a8PLmpsESGlOApkJxpUqOgrsFNArsFSawSpEKVlQkXFWpHFMO3OAzUapUJ4JHk61yqkIqcaVyAlBzQRXKBS993zsVgVV0jFVw3BPEq8n9r7c27a7TzYPzWV0RZ5EL0zplYGVbW1lRocx10kGc7rhOGRwzCj/wCwrmdqi6+w6jAeN2xyjz4W9xv4M8Z1WJdRIy/LvUK11SJBC9ArdHsMQWuG2VmNK6LBIBGuCuXnjbs450yFSqCcAuK1M8JW0odHhqahnRG0VXyKVymPp1Ow07xexcOAKvG26jPLGTdZvRmjzmV657LLPds9bfWnkxgUXQ/Q2m2DUeXbmi6PHE+C3Fipta26wAAQIGQW2GGUvNc/k8mNnrierhI758klWZySuyWrB00ZrK0WhtaoPtunv7XqtVSmCVk7S67aav77fFjFeG05aSwIqbiI5f1VxTEjeq20YFjt4ng7D1VpQZ4IyKOmBQnW+KtzVlO/D4qzAHesg9565054nvmfRLGcnl01gK7BUDRtpvsB1jA+nzuU0FRYcWiEiVZtAoFWuL2J+dSk2p8N44KvuyrxibU1oEYZak2/MDamabi0wU/UEwRv8QmHc6lwx8uI2D1TF0hzZM4O8Y+CeoN94oI9KqCf0mNrPVWoyxVTaTFopna145FpTxFUHSqn+lUT84B3xWgsdTDLzWf6auLa1nMZl2PBv5jkVcWC0NgTsV3/ACn6nvIInA8QoFpsrMy1jo2sYfMSp3UA5jPgo1ewgmJgcTPJTOD5qvBeXf4Yjg1rfwiU6ywGbzoLtriVNo2JrcAT95SGWUHNV7SaLi1Fp2cZXie6B3KVRphoMbuZK7DAMkPHp5qeT4IT2jgiqdnpC7bAnWZ7gmbQ/VOJwAGEDWUgeojD5hZTSeFpqnew/cA9FqaGSy2l2/pFTHUz1VYbLLSycL1LfHirKxuvNa7a0c1X6MeCwKTo+pdY6cmOcO7MeBCeRRPD8Tu9f6eKxjqsvrP1SQDuIn1jvWhtVYsoVKhzIdzPZCzz6XVWRpf71VxeQcwDl4Ac08OjyTej1o+ju8v6q/aVjNH17rmxqI8dS1zHqfJOyxq8QhCwbIdvfiAo4OW9FsdLim6NbUd0LWTpH1KewETrhc0Xw1J1mrZ8kJqqIa7mkHYq3iTlB9AnbP8ASPD1USxvJ8fSFMoDA8U6IcGQVRpP9ZRd9sjm0/BWzcQqzS7cGO2VG+PZ9UY7F0oOnzw1tB+ZFSBxLHfBO6Cs73NDjhr3zyXfTRo6qm50Q2owydUy0fiXWidK0oAkkrSc+vSLto2g5ACEMpKENLNI7LXHuhcvtj3ZNI3LP1quYspATbqmoFV/WO+r5+ak0WziQjjg+T19Dz894Stah6QI8kKBSfecX6hg3hrKkW55gNGbkjaYAa3UqhVIojBZfS7P0h/8Omebn4+C1YOHosppY/pNQfsaX4qieGyy0f0PVwxUgOJrPYMoY/iZI9ByVZol3aifz2lSm1otfGkSZy7LhJ7r0q7tMS9OuBYyl9d4HcFm+k9s6yuKYypgB2yRn4+Sm2/SBLhXaC6exZaet511iPq6wqhraNnnrXdbaH4mm3EA7yjGcHXNJ0GRkPitjYqssbwCw1So9xvvw2NGr4rSaFqEzjhDfUIznJRu0qRC5m6rtVKZcNpndiojxPEZJ6uSHktdEkjHFszkQldWbH+Iy79oYs5jLvhaxmbo172eBGfdkfRLaaxu5YhJaLJPapunhB/qoVqtN1pJa6RmWCYG0tOfcnxKVPaOtEmNX5SreznsnisjoHSIdVINRjz9lpYRq7bS444jELV2Udk/vegRnDxOsOHeq7TY/wAInYQeTgfRTaDsDuPoo2lGXqbx9k+SmbO6VHSuiH2UyJHYMfzD4rjQVKkGDstx+Rin9LOBsbj+znkJ9FWaEskiS7DZu1BaTSLtpQ1p1BcuZs5BcUWQMMvnYn793Hz9NqhTqk06/nvXZqiYGO/UFHdUnOeA9UrW7s/JHAP9buXRcDHFMtXbSkZu7LkHF2712JxoxJ7gm6LpJ4xyQSRKyVsfNtrN/wCnp/iqYrWuEfOtYhz50lWnXQZHAF/5KsNjLRdGuAqlQtOV2ttbL7nFppPHVtBL6vaYQzc2cTtgbVIomKvOfXyTbWX9IUZJwpVTqw7VPaDBOGS0qI7ZYbbaXF5mi0gCGwH3fq3jgwbYlPN0RRoi77zsT1dOXPccPedmVeWys3JpY4/aeSB3THgqoVbTVdcpC636RbDWweCJadV1XRznOvVS2k0AQ04vA/dGPOFM0ZXbNxk3RiS73nuAwnYBsXdo0SabC6picdeQjxVbo6qC/snEOmNce75J3RPUVy94GaVM2z3D3ea5Y2qrrtMm8JDvHgmG3m+6ZGw4kLu+5uU9ydoVQ/MCeEeS2+M0R9na+Ymm/awlvlge9QKtmtLDIqucNpDJjkFf1KLfqxwTNWoB9bkiUWMzaS5tWkQAHvqUxeDWNloqMc+S3E4A69q2NA9g8fQLMaVrtc9l1uIvXTOTy1w93gT8haWzMLaUOzEAnfdEoz0MXNgPvcfj8F3WbIIjjuUfRh9751lSicOKi7OaUNoxsJH7Iie4hVXRxjC0EkhxDTnGEQrfq/0eo3YXgeMeYWX0I51xpn6Iz3HLHitZNorfUKDdR8U91DcyJ71R2W2PAxOW1TP7wjLFRcauWLEMbuQ5zVXf2s65nXn5JP7UdkpetHKeQDrXDnZKA57icPnxTlF2MeiPUcpIfGYXFjBOJ1knmUtR4iPnelseOKPgSaxwWDqPjSjhOVNrf/GHYc1uqi86e4f3rV/eaJ/7TRCeGxklWzCoO88spCj2KzCvbmhxIa2iSRjjLhExqwKl6XbFTLWmuir71sqH9lTH33z3YLT4hsW6PogR1TD/ACgeSQPpUgQxsTiYUo5KurMEknH4rOd7Veme6QWsPMEkA6oz+YVTZw3AidxGGKtbZSc6oSRA/LFQ3tggAYei246Ry9RCj2/3D3eaVC5JttUCnl3qJUz5eaELaIqxbqTdfXwCEKIqsvpP9fR/i0/xFaWwfqnfxH/iSoV5/E4mdE/S4eqm/PghCnLZzSmZ7lb94/gCyGhvcp8HebUIWuKKv6WTVJpavnWhCZJAz5rseoQhQo63PmhnvJUJGcq/6U9YsuaEKboTZypmvNP+a1v32/8ApahCeGxkttN/rB3eijdD/wDe6v8ACo+b0IV/Cb8KFas+fohCzx2dVdozHFUlt9xCFv8AEzb/2Q=='),
                              backgroundColor: Colors.grey,
                            ),
                            Text(
                              "Alpha",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "June, 2",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 23, right: 23, bottom: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(19, 136, 134, 134),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                              backgroundColor: Colors.grey,
                            ),
                            Text(
                              "Cyrus",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "June, 3",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 23, right: 23, bottom: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(19, 136, 134, 134),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                              backgroundColor: Colors.grey,
                            ),
                            Text(
                              "Ciré",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "June, 4",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 23, right: 23, bottom: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(19, 136, 134, 134),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                              backgroundColor: Colors.grey,
                            ),
                            Text(
                              "Amadou",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "June, 5",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 23, right: 23, bottom: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(19, 136, 134, 134),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                              backgroundColor: Colors.grey,
                            ),
                            Text(
                              "Alia",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "June, 6",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 23, right: 23, bottom: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(19, 136, 134, 134),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUSEhIVFhUVFRUXFRUVFxUWFRUVFRUWFhUVFxYYHiggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGxAQGC0lHyUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLSstLS0tLf/AABEIAOEA4AMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQMEBQYCBwj/xABIEAABAwEEBgcEBgcFCQAAAAABAAIRAwQSITEFQVFhcZEGEyKBobHBBzLR8EJSYqKy4SQzY3JzgvEUFSOSwhY0Q0Vkg6Oz0v/EABgBAAMBAQAAAAAAAAAAAAAAAAABAgME/8QAIhEBAQACAgMAAwEBAQAAAAAAAAECMREhAxJBEyJRMkIE/9oADAMBAAIRAxEAPwD2lCEKkhCEIAQhCAEIQgEQhBQAqTSvSyxWZ1ytaGNdhhiYvGBMZCVmumftCbZnVbNTB60NbdeIutvNmTtI2Lwq06QJc6+ZxJMgEnEujHVKuY/1Ny/j3zpF7SLJSY4UKnWVC3sXcpO0nARmsdZPa5aW039aymXwAw5Y49p4HcI3Lyq0V5I8YwwkEb0jqzTtx1yeeKfSe3t/Rf2stqOFO10wwkYVafu6ovMOWBzBK19DplY6lRlOnVa81H9WLpGDiCRIJkjCJE4r5bq2hwd65c4Ttj0g5rw5hIIILSDiHA5g6il0fb6/QvM/ZD0ofXFanXqTUDmua0kkhhBlwLiS7GJ2YL0wFKzhUvIQhCkwkQhACEIQAkQhAIhCEA8hCEAIQhACEIQAkQhACoulfSSlY6ZLnC/cc5rdZAgZcSB3q9K8l9tFoaGUwffe7OJ7DBJbOvtOaY3cFWE7LJ5PpC0dZUe4nBznk4zmSVWVYP0uWZOWQUmoC5xEROreYU2z6Ce+CGnuGWvHinleNjHG3SmNOI7WZ9MfngkeOPznPgtTR6L1CPccNkYkTOE8gmbZ0YtAM3HY5Yg88cFHtF/jy/jNudhjrSdZqbhtV4OjlY/QjiQU6zQlOmSa77oxwbiZ4nJEylF8diksOkqtneyrScW1GG80jbw1g6wcCvqrorpYWmhTqjKpTY8brwxHcZHcV83W02RzLrKDw6PfL5nfAwXp3sV05epGyuPaoGWar1GocBvLXyP5wtN9M7129bQka6RIyKVZqCEiEAqRCEAJEIQAhCRAPoQkQCoQkQCpEIQAhCEBzUOC8V9s1ovWijSAPYpl26alTPuDAvaK5w714h7RnF+kHj6rKTZj7AeRvOJV46K90nQ7ozRNBteo2TeMA7pEu261pmUQcAABsAUPQrwyyUwPtHm4lS7FWxWGV5rrwnET22VoGSg21gKtHPwyVbaHFFglUlppjFVVcN1gEbxKtNIPiVnrVXUNPiu6TWGkKQqMYGkOxgRMzn8U10B0kaOkKDwcHv6t+yKvYH3+rPcpVtqh1JzfnDFZp4LO20wWdtu4tN4eS6MK4/Ji+qrBW95mw4cDj6qYqGwWmS2oPpMY7uc0K8lVlGeNKhIhSoqEiEgVIhCYCEIQDyEISAQhCAEIQgBCEIBi0u9V430nspqW6tGfWNA/yMAhexVx2u6PnmvOa1L9PfP0g2oOFws82OVzQm1c2n1dNrAZjCd+JJ5lPWR2IxRb7rJc9wa0azgFS1elNnaYB/Nc/F5dftJGxNTBQakuVJZullB5gOg78E9a9NtaMCIRaJOdONJ0cCVkrYxxJAHMwutM9MSCWtxOs6uCy1bSNWqcXXRySmIucnS8aCDDterMHgomlaAY1xGV0keKXRj3ghlTHK67fsKl9ImxSb9o3ea3x0wze7aOp3WU27KTB/laAr6zPlo3KnAiP3fIhWVkctMnPilyiVzKJWa3SFzKWUAqEkoQZUJEqAfQhCQCEIQAhCEAIQhARq2a8xFrDtIVGS6/RqVabgYu3HB1Wnd3AOA716bWznj5ryfTFje3Tji0wxzWVX4Z3qRpQe8DkjK8RfjnNqF0ms/WGSCbowzIG8NGZWN0rQcKQu2Vz+sE03y57sDBa9tNwbSMYwQ45b49ZZREkHWqm3dGajibtZoaTMGnePmAsPbvt03DmdV5vR6OVGVLoLXNETdJ2TGOvVrWu0x0Ya2zB4e6dk7le2bo8yzgOMucfpOzjYAMGjgn9L1AaBbCjLPtph4+nlfRvo4bRV7Ra1ocbzn+60TEkDFx3YbSQnNL2Rza5otBa1l+++oxlw3XOuOYW4uYW3MZmSVc2NoDiIxOzDkQu6+g77pNUgawQJ5jNX7xn+G/KzliY5wBuxCl6fJNKl/GYOat7RZ2UhdbzVVpcS2i3bXp+cLTx5cs/LjxHvbtXA+SmUnZHh4qKY7JTwPZO4eU/BdNcUWEolcSllZtHUpZXEpZQHUpZXKJSDtC5RKAkpUiEjCEIQAhCEAIQhAR6q8/6aWcttrKrSRNEAgTBDKkkHZ769AqjBYH2m0HH+yuaSAa3VvicWPglsjH6Cq4+04PDL1y5NWmrBlOt0sGgnMquqVJYDuVXRdLgDlK585xXX47LO1nbtOWZgDq9YBxyBIEkahOpMaZ6TWc2YQAZxDgQZCi6dqUKhbTFHrXgZNA7I2uJwbmqnS+hadSmXOotZlDW1mXTrMkOi9lyU+kqvyWaVB01Qc2Q4XwS4QRgRt3K7qWwOpteNYWLq2Ok111zCzHCcQe8YFWte0QwNBwARcRjnfpbRaLxhNV5dWszQCYr0iY2B7ZKj2c4qw0DLrXT2XmDm8GPuldHixc3my5e8HIbsU7TGHcuSMF3RyWzmPUj2RwC7lRbNU95v1THccfipAKinHYKWVwClBSN3KVcgpUG6SrlKgJSEIUmEIQgBCEIAQUJHIBlyyvTuleoMP1atM5cR6rVlUHSmnesztxaeTwtMdprG2pty6Dk9uB+0MD6KnrGLx3K06YSLNRqNza+O4tdh90Kjo2gVGyO9Zeadujw5fqrdDaIttQdZTfTIe4vLXuLSTENOAMjZxK0R6LWlwBcSHTsBHEEboTGjnuFIBuBZIGvu4KLben9roQx1Ek5AtdhyWe20kkZzTWgLWHOvtY0Y4ufnvLQMFVUZa64TIjA7VY2zSFotNQvrSATMYydyr7TUl2WITn8TlxuHw+ASrHoNbGutTKJBvOrU3tcIgdWyreB43hyWdt1phsK39lrL2kaW68fuOA81vh1ZHN5b0+iKwwhdUcklowG8LqnkqZITal20Fup9MEcWuPo4KeCqXS7yyrRfsJaeBj4FWwciwQ8CugUyCuwVJnQV0CmwV0CkbsJVwCukBLSpEKVFQhCAEIQgBIUqRyAYcqnTzJs9UD6pPLFWz1At7L1OoNrT4tWmO01gOlsGwMOyoz1HqsV2qRvDLWPULU9M68aOomf+LS75JHxVRZmtfTg7M9Y+dijzXjJt4Jzib0BpxjXPBj3suICtLbpai6MG4ZHBY3TOinNJLM8xGEnX37tyz1qLxN68IJ2x871HEvcX7XHcbHTGlqUG7B3rH1rZJLjlqUN1o7+KZe8lOYyIyzuQqvLitz7GKc6QO6i894c0DzWIa1ej+w2hNrrv8Aq0Wj/M+f9KvC/szynT2y05d/lj6Lun7q4tJw+CcpjsicFfxn9VHSBnYB+q5p8Y9VIsdWWNO7yXOmmXqNTDJpPLH0UTRNTsx3qv8AlN2tWlOAqO1ycaVCj4K7BTIK7BSM6Cuk2CugkachCFKghCVACEJCgBI8pt1XZzTbc0+CK5RqmII2j4qU7JQ2Oz7/AJ8VUKvHPaPULdH0W7LQwH+UP+CpdEWuWj5IVz7WBFnuY4Wk/wCr/wClkNFv7IKjz/6bf+fTSWgz9oePhms/pNsTGI2K3pV8MU1awxwyE74WMdFjE1aeJwhcspK5ttnA2KHchacsfVHc1ep+wmhjan/wWzvHWE+YXmLWElexexWhdo2j+KwcmfmqwvaM5+vL0W1HAx8EoMaktdBJWrA1WZeDhmC0jmIWd0PW7DOR5BaZoz4LLWCAXN+q5w5OIV4/U5Lxrk61yqrC66SG5A4N1CcYA1YEZKyY8a8PLmpsESGlOApkJxpUqOgrsFNArsFSawSpEKVlQkXFWpHFMO3OAzUapUJ4JHk61yqkIqcaVyAlBzQRXKBS993zsVgVV0jFVw3BPEq8n9r7c27a7TzYPzWV0RZ5EL0zplYGVbW1lRocx10kGc7rhOGRwzCj/wCwrmdqi6+w6jAeN2xyjz4W9xv4M8Z1WJdRIy/LvUK11SJBC9ArdHsMQWuG2VmNK6LBIBGuCuXnjbs450yFSqCcAuK1M8JW0odHhqahnRG0VXyKVymPp1Ow07xexcOAKvG26jPLGTdZvRmjzmV657LLPds9bfWnkxgUXQ/Q2m2DUeXbmi6PHE+C3Fipta26wAAQIGQW2GGUvNc/k8mNnrierhI758klWZySuyWrB00ZrK0WhtaoPtunv7XqtVSmCVk7S67aav77fFjFeG05aSwIqbiI5f1VxTEjeq20YFjt4ng7D1VpQZ4IyKOmBQnW+KtzVlO/D4qzAHesg9565054nvmfRLGcnl01gK7BUDRtpvsB1jA+nzuU0FRYcWiEiVZtAoFWuL2J+dSk2p8N44KvuyrxibU1oEYZak2/MDamabi0wU/UEwRv8QmHc6lwx8uI2D1TF0hzZM4O8Y+CeoN94oI9KqCf0mNrPVWoyxVTaTFopna145FpTxFUHSqn+lUT84B3xWgsdTDLzWf6auLa1nMZl2PBv5jkVcWC0NgTsV3/ACn6nvIInA8QoFpsrMy1jo2sYfMSp3UA5jPgo1ewgmJgcTPJTOD5qvBeXf4Yjg1rfwiU6ywGbzoLtriVNo2JrcAT95SGWUHNV7SaLi1Fp2cZXie6B3KVRphoMbuZK7DAMkPHp5qeT4IT2jgiqdnpC7bAnWZ7gmbQ/VOJwAGEDWUgeojD5hZTSeFpqnew/cA9FqaGSy2l2/pFTHUz1VYbLLSycL1LfHirKxuvNa7a0c1X6MeCwKTo+pdY6cmOcO7MeBCeRRPD8Tu9f6eKxjqsvrP1SQDuIn1jvWhtVYsoVKhzIdzPZCzz6XVWRpf71VxeQcwDl4Ac08OjyTej1o+ju8v6q/aVjNH17rmxqI8dS1zHqfJOyxq8QhCwbIdvfiAo4OW9FsdLim6NbUd0LWTpH1KewETrhc0Xw1J1mrZ8kJqqIa7mkHYq3iTlB9AnbP8ASPD1USxvJ8fSFMoDA8U6IcGQVRpP9ZRd9sjm0/BWzcQqzS7cGO2VG+PZ9UY7F0oOnzw1tB+ZFSBxLHfBO6Cs73NDjhr3zyXfTRo6qm50Q2owydUy0fiXWidK0oAkkrSc+vSLto2g5ACEMpKENLNI7LXHuhcvtj3ZNI3LP1quYspATbqmoFV/WO+r5+ak0WziQjjg+T19Dz894Stah6QI8kKBSfecX6hg3hrKkW55gNGbkjaYAa3UqhVIojBZfS7P0h/8Omebn4+C1YOHosppY/pNQfsaX4qieGyy0f0PVwxUgOJrPYMoY/iZI9ByVZol3aifz2lSm1otfGkSZy7LhJ7r0q7tMS9OuBYyl9d4HcFm+k9s6yuKYypgB2yRn4+Sm2/SBLhXaC6exZaet511iPq6wqhraNnnrXdbaH4mm3EA7yjGcHXNJ0GRkPitjYqssbwCw1So9xvvw2NGr4rSaFqEzjhDfUIznJRu0qRC5m6rtVKZcNpndiojxPEZJ6uSHktdEkjHFszkQldWbH+Iy79oYs5jLvhaxmbo172eBGfdkfRLaaxu5YhJaLJPapunhB/qoVqtN1pJa6RmWCYG0tOfcnxKVPaOtEmNX5SreznsnisjoHSIdVINRjz9lpYRq7bS444jELV2Udk/vegRnDxOsOHeq7TY/wAInYQeTgfRTaDsDuPoo2lGXqbx9k+SmbO6VHSuiH2UyJHYMfzD4rjQVKkGDstx+Rin9LOBsbj+znkJ9FWaEskiS7DZu1BaTSLtpQ1p1BcuZs5BcUWQMMvnYn793Hz9NqhTqk06/nvXZqiYGO/UFHdUnOeA9UrW7s/JHAP9buXRcDHFMtXbSkZu7LkHF2712JxoxJ7gm6LpJ4xyQSRKyVsfNtrN/wCnp/iqYrWuEfOtYhz50lWnXQZHAF/5KsNjLRdGuAqlQtOV2ttbL7nFppPHVtBL6vaYQzc2cTtgbVIomKvOfXyTbWX9IUZJwpVTqw7VPaDBOGS0qI7ZYbbaXF5mi0gCGwH3fq3jgwbYlPN0RRoi77zsT1dOXPccPedmVeWys3JpY4/aeSB3THgqoVbTVdcpC636RbDWweCJadV1XRznOvVS2k0AQ04vA/dGPOFM0ZXbNxk3RiS73nuAwnYBsXdo0SabC6picdeQjxVbo6qC/snEOmNce75J3RPUVy94GaVM2z3D3ea5Y2qrrtMm8JDvHgmG3m+6ZGw4kLu+5uU9ydoVQ/MCeEeS2+M0R9na+Ymm/awlvlge9QKtmtLDIqucNpDJjkFf1KLfqxwTNWoB9bkiUWMzaS5tWkQAHvqUxeDWNloqMc+S3E4A69q2NA9g8fQLMaVrtc9l1uIvXTOTy1w93gT8haWzMLaUOzEAnfdEoz0MXNgPvcfj8F3WbIIjjuUfRh9751lSicOKi7OaUNoxsJH7Iie4hVXRxjC0EkhxDTnGEQrfq/0eo3YXgeMeYWX0I51xpn6Iz3HLHitZNorfUKDdR8U91DcyJ71R2W2PAxOW1TP7wjLFRcauWLEMbuQ5zVXf2s65nXn5JP7UdkpetHKeQDrXDnZKA57icPnxTlF2MeiPUcpIfGYXFjBOJ1knmUtR4iPnelseOKPgSaxwWDqPjSjhOVNrf/GHYc1uqi86e4f3rV/eaJ/7TRCeGxklWzCoO88spCj2KzCvbmhxIa2iSRjjLhExqwKl6XbFTLWmuir71sqH9lTH33z3YLT4hsW6PogR1TD/ACgeSQPpUgQxsTiYUo5KurMEknH4rOd7Veme6QWsPMEkA6oz+YVTZw3AidxGGKtbZSc6oSRA/LFQ3tggAYei246Ry9RCj2/3D3eaVC5JttUCnl3qJUz5eaELaIqxbqTdfXwCEKIqsvpP9fR/i0/xFaWwfqnfxH/iSoV5/E4mdE/S4eqm/PghCnLZzSmZ7lb94/gCyGhvcp8HebUIWuKKv6WTVJpavnWhCZJAz5rseoQhQo63PmhnvJUJGcq/6U9YsuaEKboTZypmvNP+a1v32/8ApahCeGxkttN/rB3eijdD/wDe6v8ACo+b0IV/Cb8KFas+fohCzx2dVdozHFUlt9xCFv8AEzb/2Q=='),
                              backgroundColor: Colors.grey,
                            ),
                            Text(
                              "Ragui",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "June, 7",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: 10, left: 23, right: 23, bottom: 5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(19, 136, 134, 134),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'data:image/jpeg;base64,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'),
                              backgroundColor: Colors.grey,
                            ),
                            Text(
                              "Santos",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "June, 8",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      ListTile(
                        leading: CircleAvatar(child: Text('A')),
                        title: Text('Headline'),
                        subtitle: Text('Supporting text'),
                        trailing: Icon(Icons.favorite_rounded),
                      ),
                      // Container(
                      //     child: Column(
                      //   children: [
                      //     Row(
                      //       children: [
                      //         Icon(Icons.euro_outlined),
                      //         Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Text("Transfert à Maria"),
                      //             Text("June, 12")
                      //           ],
                      //         ),
                      //         SizedBox(
                      //           width: 140,
                      //         ),
                      //         Column(
                      //           children: [Text("\$32.00"), Text("Monday")],
                      //         )
                      //       ],
                      //     ),

                      //     //Pour la deuxième historique
                      //     SizedBox(
                      //       height: 8,
                      //     ),
                      //     Row(
                      //       children: [
                      //         Icon(Icons.euro_outlined),
                      //         Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Text("Transfert à Yusuf"),
                      //             Text("Février, 6")
                      //           ],
                      //         ),
                      //         SizedBox(
                      //           width: 140,
                      //         ),
                      //         Column(
                      //           children: [Text("\$130.00"), Text("Jeudi")],
                      //         )
                      //       ],
                      //     ),

                      //     //Pour la troisième historique
                      //     SizedBox(
                      //       height: 8,
                      //     ),
                      //     Row(
                      //       children: [
                      //         Icon(Icons.euro_outlined),
                      //         Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Text("Transfert à Santos"),
                      //             Text("Août, 12")
                      //           ],
                      //         ),
                      //         SizedBox(
                      //           width: 140,
                      //         ),
                      //         Column(
                      //           children: [Text("\$20.00"), Text("Mardi")],
                      //         )
                      //       ],
                      //     ),

                      //     //Pour la quatrième historique
                      //     SizedBox(
                      //       height: 8,
                      //     ),
                      //     Row(
                      //       children: [
                      //         Icon(Icons.euro_outlined),
                      //         Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Text("Transfert à Cyrus"),
                      //             Text("Mai, 1")
                      //           ],
                      //         ),
                      //         SizedBox(
                      //           width: 140,
                      //         ),
                      //         Column(
                      //           children: [Text("\$50.00"), Text("Vendredi")],
                      //         )
                      //       ],
                      //     ),

                      //     //Pour la cinquème historique
                      //     SizedBox(
                      //       height: 8,
                      //     ),
                      //     Row(
                      //       children: [
                      //         Icon(Icons.euro_outlined),
                      //         Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Text("Transfert à Ragui"),
                      //             Text("Janvier, 10")
                      //           ],
                      //         ),
                      //         SizedBox(
                      //           width: 140,
                      //         ),
                      //         Column(
                      //           children: [Text("\$300.00"), Text("Samedi")],
                      //         )
                      //       ],
                      //     ),

                      //     // Pour la sixième historique
                      //     SizedBox(
                      //       height: 8,
                      //     ),
                      //     Row(
                      //       children: [
                      //         Icon(Icons.euro_outlined),
                      //         Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Text("Transfert à Alpha"),
                      //             Text("Octobre, 23")
                      //           ],
                      //         ),
                      //         SizedBox(
                      //           width: 140,
                      //         ),
                      //         Column(
                      //           children: [Text("\$100.00"), Text("Dimanche")],
                      //         )
                      //       ],
                      //     ),
                      //   ],
                      // ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
