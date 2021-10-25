import 'package:amigo_secreto/app/components/login_field.dart';
import 'package:flutter/material.dart';

class ConfigurarPage extends StatefulWidget {
  @override
  _ConfigurarPageState createState() => _ConfigurarPageState();
}

class _ConfigurarPageState extends State<ConfigurarPage> {
  final TextEditingController nomeText = TextEditingController();
  final TextEditingController sugestaoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/images/login.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.6),
        ),
        _body(),
        _button(),
      ],
    ));
  }

  Widget _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: LoginField(nomeText, 'Nome'),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: LoginField(sugestaoText, 'Sugestão de Presente'),
          ),
        ),
      ],
    );
  }

  Widget _button() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
      child: Container(
        child: Align(
          alignment: FractionalOffset.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/home');
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, bottom: 16, top: 16),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Confirmar',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      side: BorderSide(color: Colors.blue))),
            ),
          ),
        ),
      ),
    );
  }
}
