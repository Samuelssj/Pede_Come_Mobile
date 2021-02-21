import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pede_comer/app/splash/RepositoryShared.dart';
import 'package:pede_comer/cadastro/Cadastro.dart';
import 'package:pede_comer/home/Home.dart';
import 'package:pede_comer/shared/cores.dart';
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

  bool _ocultarSenha = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pede Comer', style: TextStyle(color: Colors.deepPurple)),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.deepPurple,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Positioned(
                      left: 2.0,
                      top: 3.0,
                      child: Icon(
                        Icons.fastfood,
                        size: 150.0,
                        color: Colors.black54,
                      ),
                    ),
                    Icon(
                      Icons.fastfood,
                      size: 150.0,
                      color: Colors.white,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100.0, bottom: 10),
                  child: TextField(
                    onChanged:(String value){
                      username = value;
                      print(this.username);
                  },
                    controller: _loginController,
                    decoration: InputDecoration(
                      labelText: "Login:",
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black38)),
                      labelStyle: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextStyle(color: Colors.deepPurple, fontSize: 18.0),
                  ),
                ),
                TextField(
                  onChanged:(String value){
                    password = value;
                    print(this.password);
                  },
                  controller: _senhaController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                        _ocultarSenha ? Icons.remove_red_eye : Icons.security,
                        color: Colors.deepPurple,
                      ),
                      onPressed: () {
                        setState(() {
                          _ocultarSenha = !_ocultarSenha;
                        });
                      },
                    ),
                    labelText: "Senha:",
                    fillColor: Colors.white,
                    filled: true,
                    labelStyle: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  obscureText: _ocultarSenha,
                  style: TextStyle(color: Colors.deepPurple, fontSize: 18.0),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 40.0, left: 2.0, right: 2.5),
                        child: RaisedButton(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.white,
                          child: Text(
                            "Confirmar",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          textColor: Colors.deepPurple,
                          onPressed: ()async {
                            if(_loginController.text.isEmpty || _senhaController.text.isEmpty){
                              print('ta vazio');
                            }else{
                              // await repositoryShared.getHttp();

                            // print(await RepositoryShared.verificar_login(this.username, this.password));
                              if(await RepositoryShared.verificar_login(this.username, this.password)){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              }
                              else{
                                print('algo deu errado<TENTE NOVAMENTE>');
                              //
                              }

                            }


                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 40.0, left: 2.5, right: 2.0),
                        child: RaisedButton(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          color: Colors.deepPurpleAccent,
                          child: Text(
                            "Cadastre-se",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          textColor: Colors.white,
                          onPressed:()async {
                            //
                            // await repositoryShared.verificar_login(this.username, this.password);
                            //
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cadastro()));
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }


//   @override
//   HomePageState createState() {
//     return HomePageState();
//   }
// }
//
// class HomePageState extends State<Login>
//     with SingleTickerProviderStateMixin {
//   bool isLogin = true;
//   RepositoryShared repositoryShared;
//   String login,senha;
//   Animation<double> loginSize;
//   AnimationController loginController;
//   AnimatedOpacity opacityAnimation;
//   Duration animationDuration = Duration(milliseconds: 270);
//
//   @override
//   void initState() {
//     super.initState();
//
//     SystemChrome.setEnabledSystemUIOverlays([]);
//
//     loginController =
//         AnimationController(vsync: this, duration: animationDuration);
//
//     opacityAnimation =
//         AnimatedOpacity(opacity: 0.0, duration: animationDuration);
//   }
//
//   @override
//   void dispose() {
//     loginController.dispose();
//     super.dispose();
//   }
//
//   Widget _buildLoginWidgets() {
//     return SingleChildScrollView(
//       child: Container(
//         padding: EdgeInsets.only(bottom: 62, top: 16),
//         width: MediaQuery.of(context).size.width,
//         height: loginSize.value,
//         decoration: BoxDecoration(
//             color: Cores.primaria,
//             borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(190),
//                 bottomRight: Radius.circular(190))),
//         child: Align(
//           alignment: Alignment.bottomCenter,
//           child: AnimatedOpacity(
//             opacity: loginController.value,
//             duration: animationDuration,
//             child: GestureDetector(
//               onTap: isLogin ? null : () {
//                 loginController.reverse();
//
//                 setState(() {
//                   isLogin = !isLogin;
//                 });
//               },
//               child: Container(
//                 child: Text(
//                   'LOGIN'.toUpperCase(),
//                   style: TextStyle(
//                       fontSize: 32,
//                       fontWeight: FontWeight.bold,
//                       color: Cores.secundaria),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildLoginComponents() {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         Visibility(
//           visible: isLogin,
//           child: Padding(
//             padding: const EdgeInsets.only(left: 42, right: 42),
//             child: Column(
//               children: <Widget>[
//                 TextField(
//                   onChanged:(String value){
//                     this.login = value;
//                     print(this.login);
//                   },
//                   style: TextStyle(color: Cores.secundaria, height: 0.5),
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.email , color: Cores.secundaria,),
//                       hintText: 'E-mail',
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(32),),
//
//                       )
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 16),
//                   child: TextField(
//                     onChanged:(String value){
//                       this.senha = value;
//                       print(this.senha);
//                     },
//                     style: TextStyle(color: Cores.secundaria, height: 0.5),
//                     decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.vpn_key,color: Cores.secundaria),
//                         hintText: 'Senha',
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.all(
//                                 Radius.circular(32)))),
//                   ),
//                 ),
//
//                 GestureDetector(onTap:()async{
//                   await repositoryShared.verificar_login(this.login, this.senha);
//
//
//                 },
//                   child: Container(
//                     width: 200,
//                     height: 40,
//                     margin: EdgeInsets.only(top: 32),
//                     decoration: BoxDecoration(
//                         color: Cores.secundaria,
//                         borderRadius: BorderRadius.all(Radius.circular(50))
//                     ),
//                     child: Center(
//                       child: Text(
//                         'LOGIN',
//                         style: TextStyle(color: Cores.primaria,
//                             fontWeight: FontWeight.bold
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//
//       ],
//     );
//   }
//
//
//   Widget _buildRegistercomponents() {
//     return Scaffold(
//       backgroundColor: Cores.secundaria,
//       appBar: AppBar(
//         title: Text("Voltar ao Login"),
//         backgroundColor: Cores.primaria,
//       ),
//       body: SingleChildScrollView(
//         child: SizedBox(
//
//           width: MediaQuery
//               .of(context)
//               .size
//               .width,
//           height: MediaQuery
//               .of(context)
//               .size
//               .height,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 10.0),
//                 child: Text('cadastre-se'.toUpperCase(), //
//                   style: TextStyle(fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     color: Cores.primaria,),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 30),
//                 child: Icon(
//                   Icons.fastfood,
//                   size: 115,
//                   color: Cores.primaria,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   style: TextStyle(color: Colors.black, height: 0.5),
//                   decoration: InputDecoration(
//                       prefixIcon:
//                       Icon(Icons.person_outline, color: Cores.primaria),
//                       hintText: 'Nome',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(32)))),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   style: TextStyle(color: Colors.black, height: 0.5),
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(
//                           Icons.email, color: Cores.primaria
//                       ),
//                       hintText: 'E-mail',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(32)))),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(
//                   keyboardType: TextInputType.phone,
//                   style: TextStyle(color: Colors.black, height: 0.5),
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.phone, color: Cores.primaria),
//                       hintText: 'Telefone',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(32)))),
//                 ),
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(obscureText: true,
//                   style: TextStyle(color: Colors.black, height: 0.5),
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.vpn_key, color: Cores.primaria),
//                       hintText: 'Senha',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(32)))),
//                 ),
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextField(obscureText: true,
//                   style: TextStyle(color: Colors.black, height: 0.5),
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(Icons.vpn_key, color: Cores.primaria),
//                       hintText: 'Confirm Senha',
//                       border: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(32)))),
//                 ),
//               ),
//
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: RaisedButton(onPressed: (){
//
//                 },
//                   color: Cores.primaria,
//                   child: Text('CADASTRAR', style:TextStyle(color: Colors.white,fontSize: 35)),
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double _defaultLoginSize = MediaQuery.of(context).size.height / 1.6;
//
//     loginSize = Tween<double>(begin: _defaultLoginSize, end: 110).animate( // tamalho da curva vermelha
//         CurvedAnimation(parent: loginController, curve: Curves.linear));
//
//     return Scaffold(
//       backgroundColor: Cores.secundaria,
//       body: Stack(
//         children: <Widget>[
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: AnimatedOpacity(
//               opacity: isLogin ? 0.0 : 1.0,
//               duration: animationDuration,
//               child: Container(child: _buildRegistercomponents()),
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               color: isLogin && !loginController.isAnimating ? Cores.secundaria : Colors.transparent, //fundo log
//               width: MediaQuery.of(context).size.width,
//               height: _defaultLoginSize/1.5,
//               child: Visibility(
//                 visible: isLogin,
//                 child: GestureDetector(
//                   onTap: () {
//                     showModalBottomSheet<void>(
//                         context: context,
//                         builder: (BuildContext context) =>
//                             _buildRegistercomponents(),
//                         isScrollControlled: true
//                     );
//                     loginController.forward();
//                     setState(() {
//                       isLogin = !isLogin;
//                     });
//                   },
//                   child: Center(
//                     child: Text(
//                       'Cadastre-se'.toUpperCase(), //abaixo do login
//                       style: TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                         color: Cores.primaria,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           AnimatedBuilder(
//             animation: loginController,
//             builder: (context, child) {
//               return _buildLoginWidgets();
//             },
//           ),
//           Align(
//               alignment: Alignment.topCenter,
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: MediaQuery.of(context).size.height/2,
//                 child: Center(child: _buildLoginComponents()),
//               )
//           )
//         ],
//       ),
//     );
//   }
}