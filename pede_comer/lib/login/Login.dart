import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'file:///C:/Users/Samuel/AndroidStudioProjects/pede_comer/lib/app/splash/data/data/RepositoryShared.dart';
import 'package:pede_comer/cadastro/Cadastro.dart';
import 'package:pede_comer/home/Home.dart';
import 'package:pede_comer/shared/cores.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;



class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginController = TextEditingController();
  final _senhaController = TextEditingController();
  // RepositoryShared repositoryShared = new RepositoryShared();
  String username, password;

  bool _ocultarSenha = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      body: SafeArea(
        minimum: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center, //centralisa
          children: <Widget>[

            Expanded(
                flex: 1,
                child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                Icon(Icons.fastfood, color: Color(0xFF7540EE),size: 35,),
                SizedBox(width: 10),
                Text("Pede Comer",
                  style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF7540EE),
                  ),
                ),
              ],
            ),
            ),

            Expanded(
                flex: 6,
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Bem vindo!",
                    style: TextStyle(
                      color: Color(0XFF25265E),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                SizedBox(height: 20),
                Text('Descubra restaurantes e mercados perto de você, comida '
                    'de verdade da sua cidade, onde e quando você quiser !',
                    style: TextStyle(
                        color:  Color(0XFF787993),
                        fontStyle: FontStyle.italic,
                    ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _loginController,
                  onChanged:(String value){
                    username = value;
                    print(this.username);
                  },
                  style: TextStyle(color: Colors.deepPurple, fontSize: 16.0),
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                            fontSize: 16,
                          color: Colors.deepPurple,
                            fontStyle: FontStyle.italic,
                        ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDFDFE4),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF787993),
                        ),
                      ),
                    ),

                ),
                SizedBox(height: 2),
                TextField(
                  obscureText: _ocultarSenha,
                  style: TextStyle(color: Colors.deepPurple, fontSize: 16.0),
                  onTap: (){
                    setState(() {
                      _ocultarSenha = !_ocultarSenha;
                    });
                  },

                  onChanged: (String value){
                    password = value;
                  },

                  controller: _senhaController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _ocultarSenha ? Icons.remove_red_eye : Icons.security,
                          color: Colors.deepPurple,
                        ),
                      ),
                        hintText: "Senha",
                        hintStyle: TextStyle(
                            fontSize: 16,
                          color: Colors.deepPurple,
                            fontStyle: FontStyle.italic,
                        ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xFFDFDFE4),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF787993),
                        ),
                      ),
                    ),
                ),
              ],
            ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(onPressed: () async{

                    if(_loginController.text.isEmpty || _senhaController.text.isEmpty){
                      Get.snackbar("Falha ao realizar o login", 'Um ou mais campos estão em branco');
                    }else{
                      if(await RepositoryShared.verificar_login(_loginController.text, _senhaController.text)){
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => Home()));
                    }
                    else{
                      Get.snackbar("'Usuario e/ou senha incorretos", 'Um ou mais dados informados estão incorretos');
                      print('algo deu errado<TENTE NOVAMENTE>');
                    //
                    }
                  }

                  },
                    child: Text("Entrar", style: TextStyle(
                    color: Color(0xFF7540EE),
                    fontWeight: FontWeight.bold,
                      fontSize: 18,
                  ),
                      ),
                  color: Color(0xFF7540EE).withOpacity(.2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  Text("Esqueceu sua Senha?", style: TextStyle(
                    color: Color(0xFF7540EE),
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Ainda não tem sua conta? ", style:TextStyle(
                    color: Color(0xFF787993),
                    fontStyle: FontStyle.italic,
                  )),
                  Text("Criar uma! ", style:TextStyle(
                    color: Color(0xFFFF7052),
                    fontStyle: FontStyle.italic,
                    fontSize: 18
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
















// class Login extends StatefulWidget {
//
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   final _loginController = TextEditingController();
//   final _senhaController = TextEditingController();
//   // RepositoryShared repositoryShared = new RepositoryShared();
//   String username, password;
//
//   bool _ocultarSenha = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Pede Comer', style: TextStyle(color: Colors.deepPurple)),
//           centerTitle: true,
//           backgroundColor: Colors.white,
//         ),
//         backgroundColor: Colors.deepPurple,
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 10.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Stack(
//                   children: <Widget>[
//                     Positioned(
//                       left: 2.0,
//                       top: 3.0,
//                       child: Icon(
//                         Icons.fastfood,
//                         size: 150.0,
//                         color: Colors.black54,
//                       ),
//                     ),
//                     Icon(
//                       Icons.fastfood,
//                       size: 150.0,
//                       color: Colors.white,
//                     )
//                   ],
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 100.0, bottom: 10),
//                   child: TextField(
//                     onChanged:(String value){
//                       username = value;
//                       print(this.username);
//                   },
//                     controller: _loginController,
//                     decoration: InputDecoration(
//                       labelText: "Login:",
//                       fillColor: Colors.white,
//                       filled: true,
//                       enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.black38)),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.black38)),
//                       labelStyle: TextStyle(
//                         color: Colors.deepPurple,
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     style: TextStyle(color: Colors.deepPurple, fontSize: 18.0),
//                   ),
//                 ),
//                 TextField(
//                   onChanged:(String value){
//                     password = value;
//                   },
//                   controller: _senhaController,
//                   decoration: InputDecoration(
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         _ocultarSenha ? Icons.remove_red_eye : Icons.security,
//                         color: Colors.deepPurple,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _ocultarSenha = !_ocultarSenha;
//                         });
//                       },
//                     ),
//                     labelText: "Senha:",
//                     fillColor: Colors.white,
//                     filled: true,
//                     labelStyle: TextStyle(
//                         color: Colors.deepPurple,
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   obscureText: _ocultarSenha,
//                   style: TextStyle(color: Colors.deepPurple, fontSize: 18.0),
//                 ),
//                 Row(
//                   children: <Widget>[
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                             top: 40.0, left: 2.0, right: 2.5),
//                         child: RaisedButton(
//                           elevation: 5.0,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0)),
//                           color: Colors.white,
//                           child: Text(
//                             "Confirmar",
//                             style: TextStyle(fontSize: 18.0),
//                           ),
//                           textColor: Colors.deepPurple,
//                           onPressed: ()async {
//                             if(_loginController.text.isEmpty || _senhaController.text.isEmpty){
//                               _showDialog('Falha ao realizar o login', 'Um ou mais campos estão em branco');
//                             }else{
//                               if(await RepositoryShared.verificar_login(_loginController.text, _senhaController.text)){
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Home()));
//                               }
//                               else{
//                                 _showDialog('Usuario e/ou senha incorretos', 'Um ou mais dados informados estão incorretos');
//                                 print('algo deu errado<TENTE NOVAMENTE>');
//                               //
//                               }
//                             }
//
//
//                           },
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                             top: 40.0, left: 2.5, right: 2.0),
//                         child: RaisedButton(
//                           elevation: 5.0,
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0)),
//                           color: Colors.deepPurpleAccent,
//                           child: Text(
//                             "Cadastre-se",
//                             style: TextStyle(fontSize: 18.0),
//                           ),
//                           textColor: Colors.white,
//                           onPressed:()async {
//                             // Get.snackbar("Titulo de cadastro", "cadastrandoo mensagem");  mensagem na barra
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//
//                                     builder: (context) => Cadastro()));
//                           },
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         )
//     );
//   }
//
//   void _showDialog(String t, String s) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         // retorna um objeto do tipo Dialog
//         return AlertDialog(
//           title: new Text(t,
//             style: TextStyle(
//                 color: Colors.deepPurple,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25.0
//             ),
//             textAlign: TextAlign.center,
//           ),
//           content: new Text(s, style: TextStyle(
//               color: Colors.black,
//               fontSize: 18.0
//           ),),
//           actions: <Widget>[
//             // define os botões na base do dialogo
//             new FlatButton(
//               child: new Text("Fechar", style: TextStyle(
//                   color: Colors.deepPurple,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18.0
//               ),),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }


