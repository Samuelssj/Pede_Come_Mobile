import 'package:dio/dio.dart';
import 'package:pede_comer/shared/urls.dart';

class RepositoryShared{

  Dio _dio;
  Response _response;

  RepositoryShared(){
    this._dio = Dio();
  }

  Future<bool> Verificar_login() async{
    print("Logado");
    print(_response);
    _response = await this._dio.get(url_login);
    print(_response);
    return this._response.data['flag'];
  }




}