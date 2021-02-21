import 'package:flutter/material.dart';

class Endereco extends StatefulWidget {
  @override
  _EnderecoState createState() => _EnderecoState();
}

class _EnderecoState extends State<Endereco> {

  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerCpf = TextEditingController();
  final TextEditingController _controllerTelefone = TextEditingController();
  final TextEditingController _controllerSenha = TextEditingController();
  final TextEditingController _controllerConfSenha = TextEditingController();

  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  void _resetCampos() {
    _controllerEmail.text = "";
    _controllerTelefone.text = "";
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
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding:
                              EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 5.0),
                              child: TextFormField(
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
                              EdgeInsets.fromLTRB(40.0, 0.0, 10.0, 5.0),
                              child: TextFormField(
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
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 15.0),
                    child: TextFormField(
                        keyboardType: TextInputType.number,
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
                    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 15.0),
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
                      controller: _controllerEmail,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira a cidade";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: TextFormField(
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
                        obscureText: true,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira sua senha";
                          }
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 10.0),
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
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                print("Salvando");
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
                              onPressed: () {},
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