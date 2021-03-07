import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pede_comer/shared/Objeto.dart';
import 'package:pede_comer/shared/models/cliente.dart';

import 'Cadastro_endereco.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool _ocultarSenha1 = true;
  bool _ocultarSenha2 = true;

  static Cliente cliente = new Cliente();

  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerCpf = TextEditingController();
  final TextEditingController _controllerTelefone = TextEditingController();
  final TextEditingController _controllerSenha = TextEditingController();
  final TextEditingController _controllerConfSenha = TextEditingController();

  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  void _resetCampos() {
    _controllerNome.text = "";
    _controllerEmail.text = "";
    _controllerCpf.text = "";
    _controllerTelefone.text = "";
    _controllerSenha.text = "";
    _controllerConfSenha.text = "";
    setState(() {
      _formKey = GlobalKey<FormState>();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dados Pessoais",
          style: TextStyle(
              color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Color(0xFFF8F8FF),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Nome Completo:",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54)),
                          labelStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        style: TextStyle(color: Colors.black54, fontSize: 18.0),
                        controller: _controllerNome,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira seu nome completo";
                          }
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "E-mail:",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      style: TextStyle(color: Colors.black54, fontSize: 18.0),
                      controller: _controllerEmail,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira seu e-mail";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: TextFormField(
                      controller: _controllerCpf,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Cpf:",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      style: TextStyle(color: Colors.black54, fontSize: 18.0),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Insira seu cpf";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: TextFormField(
                        controller: _controllerTelefone,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Telefone:",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54)),
                          labelStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        style: TextStyle(color: Colors.black54, fontSize: 18.0),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira seu telefone";
                          }
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: TextFormField(
                        controller: _controllerSenha,
                        decoration: InputDecoration(
                          labelText: "Senha:",
                          suffixIcon: IconButton(
                            icon: Icon(
                              _ocultarSenha1
                                  ? Icons.remove_red_eye
                                  : Icons.security,
                              color: Colors.black54,
                            ),
                            onPressed: () {
                              setState(() {
                                _ocultarSenha1 = !_ocultarSenha1;
                              });
                            },
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54)),
                          labelStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        style: TextStyle(color: Colors.black54, fontSize: 18.0),
                        obscureText: _ocultarSenha1,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Insira sua senha";
                          }
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: TextFormField(
                      controller: _controllerConfSenha,
                      decoration: InputDecoration(
                        labelText: "Confirmar senha:",
                        suffixIcon: IconButton(
                          icon: Icon(
                            _ocultarSenha2
                                ? Icons.remove_red_eye
                                : Icons.security,
                            color: Colors.black54,
                          ),
                          onPressed: () {
                            setState(() {
                              _ocultarSenha2 = !_ocultarSenha2;
                            });
                          },
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      style: TextStyle(color: Colors.black54, fontSize: 18.0),
                      obscureText: _ocultarSenha2,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Confirme sua senha";
                        }
                      },
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 5.0),
                          child: ElevatedButton(
                            child: Text("Salvar",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 35),
                                primary: Colors.lightGreen,
                                onPrimary: Colors.white,
                                elevation: 5.0,
                                shadowColor: Colors.lightGreen),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                              cliente.username = _controllerNome.text;
                              cliente.email = _controllerEmail.text;
                              cliente.telefone = _controllerTelefone.text;
                              cliente.cpf = _controllerCpf.text;
                              cliente.password = _controllerSenha.text;
                              clientes.add(cliente);


                              print("Salvando");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Endereco()));
                              }
                            },
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.0, right: 10.0),
                            child: ElevatedButton(
                              child: Text("Limpar Campos",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  )),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(100, 35),
                                  primary: Colors.deepPurple,
                                  onPrimary: Colors.white,
                                  elevation: 5.0,
                                  shadowColor: Colors.deepPurple),
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
