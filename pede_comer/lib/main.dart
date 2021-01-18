import 'package:flutter/material.dart';
import 'package:pede_comer/login/Login.dart';
import 'app/splash/Splash.dart';
import 'home/Home.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Map<String, WidgetBuilder> rotas ={
     'home': (_)=>Home(),
    'login': (_)=>Login()
    };

    return MaterialApp(
      routes: rotas,
      home: Splash()


    );
  }
}

