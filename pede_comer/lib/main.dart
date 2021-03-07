import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pede_comer/cadastro/Cadastro.dart';
import 'package:pede_comer/cadastro/Cadastro_endereco.dart';
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

    return GetMaterialApp(
      theme: ThemeData(
          hintColor: Colors.white,
          primarySwatch: Colors.deepPurple,
          primaryColor: Colors.white
      // ),
    ),
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        '/Home': (_)=>Home(),
        '/Login': (_)=>Login(),
        '/Cadastrar':(_)=>Cadastro(),
        '/Cadastrar_endereco':(_)=>Endereco(),
      },

    );
  }
}


