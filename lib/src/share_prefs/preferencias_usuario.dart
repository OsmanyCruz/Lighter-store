import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:zippo_ventas/src/models/user_model.dart';

class PreferenciasUsuario with ChangeNotifier{
  static final PreferenciasUsuario _instancia =
      new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;
  UserModel usuario;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
     
    if(this.tokenAcceso != "" && this.idUser != 0){
      final url = "http://apizippo.fotosautos.cl/api/user";
      final token = this.tokenAcceso;
      final resp = await http.get(url,
      headers: {HttpHeaders.authorizationHeader: "Bearer $token"},);
      final decodedData = json.decode(resp.body);
      this.usuario = UserModel.fromJson(decodedData);
    }

  }

  // GET y SET del Token de Acceso
  get getusuario{
    return this.usuario;
  }

  set setusuario(UserModel value) {
   this.usuario = value;
   notifyListeners();
  }

  // GET y SET del Token de Acceso
  get tokenAcceso {
    return _prefs.getString('tokenAcceso') ?? "";
  }

  set tokenAcceso(String value) {
    _prefs.setString('tokenAcceso', value);
  }


  // GET y SET del Token de Acceso
  get idUser {
    return _prefs.getInt('idUser') ?? 0;
  }

  set idUser( int value ) {
    _prefs.setInt('idUser', value);
  }


   get cantidadCarro {
    return _prefs.getInt('cantidadCarro') ??0;
  }

  set cantidadCarro(int value) {
    _prefs.setInt('cantidadCarro', value);
  }
}
