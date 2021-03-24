import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var modular = Modular;
    return MaterialApp(
      theme: ThemeData(
        hintColor: Colors.white,
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.white,
        textTheme: GoogleFonts.cantarellTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,

      //   home: Splash(),
      //   routes: {
      //     '/Home': (_) => Home(),
      //     '/Login': (_) => Login(),
      //     '/Cadastrar': (_) => Cadastro(),
      //     '/Cadastrar_endereco': (_) => Endereco(),
    );
  }
}
