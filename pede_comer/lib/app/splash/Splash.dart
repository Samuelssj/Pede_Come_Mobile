import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pede_comer/app/splash/RepositoryShared.dart';
import 'package:pede_comer/shared/cores.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  RepositoryShared repositoryShared;



  @override
  void initState() {
    super.initState();
    this.repositoryShared = RepositoryShared();
    this.startSleep();
  }

  void startSleep() {
    new Timer(Duration(seconds: 2), navigate);
  }

  void navigate() async{
    print('navegou');
    // this.repositoryShared.Verificar_login(); retornando do servido
    bool flag = await this.repositoryShared.Verificar_login();
    if (flag) {
      Navigator.pushReplacementNamed(context, 'home');
    } else {
      Navigator.pushReplacementNamed(context, 'login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.primaria,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(80.0, 0, 0, 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.fastfood,
              size: 200,
              color: Cores.secundaria,
            ),
            Text(
              "Pede -> Comer",
              style: TextStyle(
                  color: Cores.secundaria,
                  fontStyle: FontStyle.italic,
                  fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
