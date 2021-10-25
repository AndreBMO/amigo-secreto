import 'package:amigo_secreto/app/pages/configurar_page.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  //Implementar tratativa para buscar no banco se já possui
  //as informações da tela inicial cadastradas
  bool teste = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.red[900],
          accentColor: Colors.blueAccent[700],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          ),
          brightness: Brightness.light,
        ),
        routes: {
          '/home': (context) => HomePage(),
          '/configurar': (context) => ConfigurarPage(),
        },
        home: SplashScreenView(
          home: (teste) ? ConfigurarPage() : HomePage(),
          duration: 3000,
          imageSize: 500,
          imageSrc: "assets/images/fade.jpg",
          backgroundColor: Colors.white,
        ));
  }
}
