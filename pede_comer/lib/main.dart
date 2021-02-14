import 'package:flutter/material.dart';
import 'package:pede_comer/login/Login.dart';
import 'app/splash/Splash.dart';
import 'home/Home.dart';
import 'package:pede_comer/login/InicioScreen.dart';

void main() {
  runApp(MyApp()
   );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Map<String, WidgetBuilder> rotas ={
     'home': (_)=>Home(),
     'login': (_)=>Login(),
      'inicio':(_)=>InicioScreen()
    };

    return MaterialApp(
      theme: ThemeData(
          hintColor: Colors.white,
          primarySwatch: Colors.deepPurple,
          primaryColor: Colors.white
      // ),
    ),
      debugShowCheckedModeBanner: false,
      routes: rotas,
      home: Splash()


    );
  }
}

