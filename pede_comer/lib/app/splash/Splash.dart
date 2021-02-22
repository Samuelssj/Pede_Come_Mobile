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
    // this.repositoryShared.verificar_login(); //retornando do servido
    bool flag = await this.repositoryShared.flag;
    if (flag) {
      Navigator.pushReplacementNamed(context, '/Home');
    } else {
      Navigator.pushReplacementNamed(context, '/Login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 200.0, left: 62.0),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                  left: 2.0,
                  top: 3.0,
                  child: Icon(
                    Icons.fastfood,
                    size: 150.0,
                    color: Colors.black54,),
                ),
                Icon(
                  Icons.fastfood,
                  size: 150.0,
                  color: Colors.white,)],
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            GestureDetector(
                child: Text("Pede Comer", style: TextStyle(shadows: <Shadow>[
                  Shadow(
                      offset: Offset(2.0, 3.0),
                      blurRadius: 0.0,
                      color: Colors.black54)],
                    color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
                ),
                onTap:() {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Login()));
                }
            ),

            Padding(
                padding: EdgeInsets.only(top: 50.0, bottom: 10),
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    strokeWidth: 5.0,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

//   @override
//   _SplashState createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//
//   RepositoryShared repositoryShared;
//
//
//
//   @override
//   void initState() {
//     super.initState();
//     this.repositoryShared = RepositoryShared();
//     this.startSleep();
//   }
//   void startSleep() {
//     new Timer(Duration(seconds: 2), navigate);
//   }
//
//   void navigate() async{
//     // this.repositoryShared.verificar_login(); //retornando do servido
//     bool flag = await this.repositoryShared.flag;
//     if (flag) {
//       Navigator.pushReplacementNamed(context, 'home');
//     } else {
//       Navigator.pushReplacementNamed(context, 'login');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Cores.primaria,
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(80.0, 0, 0, 50.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Icon(
//               Icons.fastfood,
//               size: 200,
//               color: Cores.secundaria,
//             ),
//             Text(
//               "Pede -> Comer",
//               style: TextStyle(
//                   color: Cores.secundaria,
//                   fontStyle: FontStyle.italic,
//                   fontSize: 30),
//             )
//           ],
//         ),
//       ),
//     );
//   }
}
