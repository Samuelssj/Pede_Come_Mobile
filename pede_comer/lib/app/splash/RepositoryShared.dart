import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pede_comer/shared/urls.dart';

class RepositoryShared {

  Dio _dio;
  Response _response;
  bool flag = false;

  RepositoryShared() {
    this._dio = Dio();
  }

  Future<bool> verificar_login(String login, String senha) async {
    try{
    _response = await this._dio.post(url_login, data: {"username": "$login", "password": "$senha"});

    print(_response.data['flag']);

    if (this._response.statusCode == 200 ||
        this._response.statusCode == 201) {
      return flag = true;
    }

    }on DioError catch(e){
      String message = "Erro ao fazer login";
      if (e?.response?.statusCode == 401) {
        message = "Login ou senha inválidos";
      }
      throw ((message));
    }
    print("Logado");
    print(_response);
    _response = await this._dio.get(url_login);
    print(_response);
    return this._response.data['flag'];
  }
  //
  // Future<bool> login(String usuario, String senha) async {
  //   try {
  //     this._response = await _dio.instance.post(
  //         Urls.GET_TOKEN, data: {"username": "$usuario", "password": "$senha"});
  //     if (this._response.statusCode == 200 ||
  //         this._response.statusCode == 201) {
  //       String token = "${this._response.data['access']}";
  //       SharedPreferences prefs = await SharedPreferences.getInstance();
  //       await prefs.setString('token', 'Bearer $token');
  //       return true;
  //     }
  //   } on DioError catch (e) {
  //     String message = "Erro ao fazer login";
  //     if (e?.response?.statusCode == 401) {
  //       message = "Login ou senha inválidos";
  //     }
  //     throw (RestException(message));
  //   }
  // }


}