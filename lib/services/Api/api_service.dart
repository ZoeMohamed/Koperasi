import 'dart:developer';
import 'package:koperasi/constant/constant.dart';
import 'package:dio/dio.dart';

class ApiService {
  final loginurl = baseUrl;

  login({String? username, String? password}) async {
    Map<String, dynamic> logindata = {
      "username": username,
      "password": password
    };
    // Post
    try {
      var response = await Dio().post(loginurl, data: logindata);
      log(response.toString());
    } catch (e) {
      log(e.toString());
    }
  }

  
}
