import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../dialogs/dialogs.dart';
import '../models/cars/cars.dart';

class UserApi{
  Dio client = Dio();
  Future<Cars?> get(BuildContext context) async {
    Response response = await client.get('https://myfakeapi.com/api/cars');
    if (response.statusCode == 200) {
      return Cars.fromJson(response.data);
    } else {
      print(response.data);
      errorBuilder(context, 'Error','Проблемы с получением');
    }
  }
}