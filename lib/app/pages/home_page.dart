import 'package:amigo_secreto/app/components/menu.dart';
import 'package:amigo_secreto/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Amigo Secreto',
          style: TextStyle(
            fontFamily: 'candy',
            fontSize: 32,
          ),
        ),
        actions: [],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              child: Menu(
                Icon(
                  Icons.card_giftcard_rounded,
                  color: Colors.red[900],
                  size: 32,
                ),
                'Sortear',
                () async {
                  await alertMessage();
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              child: Menu(
                Icon(
                  Icons.settings,
                  color: Colors.red[900],
                  size: 32,
                ),
                'Configurar',
                () {
                  Navigator.of(context).pushReplacementNamed('/configurar');
                },
              ),
            ),
          ),
          Center(
            child: Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  print('Card tapped.');
                },
                child: Container(
                  width: 300,
                  height: 100,
                  child: Text('A card that can be tapped'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> alertMessage() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Atenção!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Você está prestes a sortear seu amigo secreto.'),
                Text(
                    'Certifique-se de que esteja em um local onde apenas você veja com quem saiu!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                homeController.sortearPessoa();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
