import 'package:flutter/material.dart';
import 'package:pede_comer/app/splash/RepositoryShared.dart';
import 'package:pede_comer/home/Home.dart';
import 'package:pede_comer/shared/Objeto.dart';

class Endereco extends StatefulWidget {
  @override
  _EnderecoState createState() => _EnderecoState();
}

class _EnderecoState extends State<Endereco> {
  String rua, numero, bairro,cidade, estado;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerTelefone = TextEditingController();
  final TextEditingController _controllerRua = TextEditingController();
  final TextEditingController _controllerNumero = TextEditingController();
  final TextEditingController _controllerBairro = TextEditingController();
  final TextEditingController _controllerCidade = TextEditingController();
  final TextEditingController _controllerEstado = TextEditingController();


  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  void _resetCampos() {
    _controllerRua.text = "";
    _controllerNumero.text = "";
    _controllerBairro.text = "";
    _controllerCidade.text = "";
    _controllerEstado.text = "";
    setState(() {
      _formKey = GlobalKey<FormState>();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Endereço",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
//      backgroundColor: Color(0xFFF8F8FF),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding:
                              EdgeInsets.only(left: 20.0, top: 0.0,  right: 0.0, bottom: 20.0),
                              child: TextFormField(
                                controller: _controllerRua,
                                  decoration: InputDecoration(
                                    labelText: "Rua:",
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.deepPurple)),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.deepPurple)),
                                    labelStyle: TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  style: TextStyle(
                                      color: Colors.deepPurple, fontSize: 18.0),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Insira a rua";
                                    }
                                  }),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                              EdgeInsets.fromLTRB(40.0, 0.0, 20.0, 20.0),
                              child: TextFormField(
                                controller: _controllerNumero,
                                keyboardType: TextInputType.number,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelText: "Número:",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.deepPurple)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.deepPurple)),
                                  labelStyle: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: TextStyle(
                                    color: Colors.deepPurple, fontSize: 18.0),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return "Insira o número";
                                  }
                                },
                              ),
                            ),
                          )
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                    child: TextFormField(
                      controller: _controllerBairro,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Bairro:",
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.deepPurple)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.deepPurple)),
                          labelStyle: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextStyle(color: Colors.deepPurple, fontSize: 18.0),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira o bairro";
                          }
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Cidade:",
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.deepPurple)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.deepPurple)),
                        labelStyle: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: TextStyle(color: Colors.deepPurple, fontSize: 18.0),
                      controller: _controllerCidade,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a cidade";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                    child: TextFormField(
                      controller: _controllerEstado,
                        decoration: InputDecoration(
                          labelText: "Estado:",
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.deepPurple)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.deepPurple)),
                          labelStyle: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextStyle(color: Colors.deepPurple, fontSize: 18.0),
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira sua senha";
                          }
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 15.0),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 5.0),
//                          child: ElevatedButton(
//                            child: Text("Salvar",
//                                style: TextStyle(
//                                  fontSize: 18.0,
//                                  fontWeight: FontWeight.bold,
//                                )),
//                            style: ElevatedButton.styleFrom(
//                                minimumSize: Size(100, 35),
//                                primary: Colors.lightGreen,
//                                onPrimary: Colors.white,
//                                elevation: 5.0,
//                                shadowColor: Colors.lightGreen),
//
//                            onPressed: () {
//                              if (_formKey.currentState.validate()) {
//                                print("Salvando");
//                              }
//                            },
//                          ),

                          child: RaisedButton(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            color: Colors.lightGreen,
                            child: Text(
                              "Salvar",
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            textColor: Colors.white,
                            onPressed: ()async  {
                              if (_formKey.currentState.validate()) {
                                rua = _controllerRua.text;
                                numero = _controllerNumero.text;
                                bairro = _controllerBairro.text;
                                cidade = _controllerCidade.text;
                                estado = _controllerEstado.text;
                                if(await RepositoryShared.created_cliente(clientes[0].username, clientes[0].password,
                                    clientes[0].email, clientes[0].telefone, clientes[0].cpf, this.rua, this.numero,
                                    this.bairro, this.cidade, this.estado) ){
                                  clientes.removeAt(0);
                                  Navigator.pushReplacementNamed(
                                      context,
                                      '/Home');

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
                            padding: EdgeInsets.only(left: 5.0, right: 10.0),
//                            child: ElevatedButton(
//                               child: Text("Limpar Campos",
//                              style: TextStyle(
//                                fontSize: 18.0,
//                                fontWeight: FontWeight.bold,
//                              )),
//                              style: ElevatedButton.styleFrom(
//                                  minimumSize: Size(100, 35),
//                                  primary: Colors.deepPurple,
//                                  onPrimary: Colors.white,
//                                  elevation: 5.0,
//                                  shadowColor: Colors.deepPurple),
//                              onPressed: () {
//                            print('Limpar');
//                          },
//                        ),

                            child: RaisedButton(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              color: Colors.deepPurple,
                              child: Text(
                                "Limpar Campos",
                                style: TextStyle(
                                    fontSize: 18.0, fontWeight: FontWeight.bold),
                              ),
                              textColor: Colors.white,
                              onPressed: () {
                                _resetCampos();
                              },
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
