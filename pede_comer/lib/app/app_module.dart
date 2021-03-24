import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pede_comer/app/splash/Splash.dart';
import 'package:pede_comer/cadastro/Cadastro.dart';
import 'package:pede_comer/cadastro/Cadastro_endereco.dart';
import 'package:pede_comer/home/Home.dart';
import 'package:pede_comer/login/Login.dart';


import 'app_widget.dart';

class AppModule extends MainModule {

  @override
  // TODO: implement binds
  List<Bind> get binds => throw UnimplementedError();

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => throw UnimplementedError();

  @override
  // TODO: implement routers
  List<ModularRouter> get routers => [

        ModularRouter("/", child: (_, args) => Splash()),
        ModularRouter("/Home", child: (_, args) => Home()),
        ModularRouter("/Login", child: (_, args) => Login()),
        ModularRouter("/Cadastrar", child: (_, args) => Cadastro()),
        ModularRouter("/Cadastrar_endereco", child: (_, args) => Endereco()),
        
      ];
}


