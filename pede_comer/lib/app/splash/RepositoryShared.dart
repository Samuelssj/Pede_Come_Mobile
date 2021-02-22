import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pede_comer/shared/urls.dart';

class RepositoryShared {

  static Dio _dio = Dio();
  static Response _response;
  bool flag = false;


  void getHttp() async {
    try {
      Response response = await Dio().get("http://www.google.com");
      print(response);
    } catch (e) {
      print(e);
    }
  }


  static Future<bool> verificar_login(String username, String password) async {
    //
    // this._response = await this._dio.get("https://servicodados.ibge.gov.br/api/v1/localidades/distritos");
    // print(_response.data);
    // return true;
    _response = await _dio.post(url_login, data: {"username": "$username", "password": "$password"});
    return _response.data['flag'];
        // options: new Options(
        //     headers: { HttpHeaders.contentTypeHeader: 'application/json'}));
  }


  static Future<bool> created_cliente(String username, String password, String email
      , String telefone, String cpf, String rua,String numero, String bairro,
      String cidade, String estado ) async {
    //
    // this._response = await this._dio.get("https://servicodados.ibge.gov.br/api/v1/localidades/distritos");
    // print(_response.data);
    // return true;
    _response = await _dio.post(url_clientes, data: {"username": "$username", "password": "$password", "email": "$email"
      , "telefone": "$telefone", "cpf": "$cpf", "rua": "$rua", "numero": "$numero", "bairro": "$bairro",
      "cidade": "$cidade", "estado": "$estado"});

    return _response.data['flag'];
    // options: new Options(
    //     headers: { HttpHeaders.contentTypeHeader: 'application/json'}));
  }



}