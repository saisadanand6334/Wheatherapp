// e79a5589a86648fdaab102049230102

import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:wheatherapp/wheather_datas.dart';


class Whtherdatas{
  Future<Whether> getWhterdatas(String place)async{
    try{
      final prameters={
        'key':'e79a5589a86648fdaab102049230102',
        'q':place,
      };
      final uri=Uri.http('api.weatherapi.com','/v1/current.json',prameters);
      final respo=await http.get(uri);
      if (respo.statusCode==200){
        print('is ${respo}');
        return Whether.fromJson(jsonDecode(respo.body));
      }
      else{
        throw Exception('Whather cannot be displayed');
      }
    }
    catch(e){
      rethrow;
    }
  }
}