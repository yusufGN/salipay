import 'package:flutter/material.dart';

class RecuPresoonne extends StatefulWidget {
  const RecuPresoonne({super.key, required this.title});

  final String title;

  @override
  State<RecuPresoonne> createState() => _RecuPresoonneState();
}

class _RecuPresoonneState extends State<RecuPresoonne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body:
            // Center(
            //   child:
            //       //  Column(
            //       //   mainAxisAlignment: MainAxisAlignment.center,
            //       //   children: <Widget>[Text("Bienvenue sur la page d'accueil")],
            //       // ), padding:

            // ),

            Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Dialog(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('This is a typical dialog.'),
                        const SizedBox(height: 15),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              child: const Text('Show Dialog'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Dialog.fullscreen(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text('This is a fullscreen dialog.'),
                      const SizedBox(height: 15),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Close'),
                      ),
                    ],
                  ),
                ),
              ),
              child: const Text('Show Fullscreen Dialog'),
            ),
          ],
        ));
  }
}
