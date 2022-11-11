import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_recipt/api/link_api.dart';
import 'package:food_recipt/models/foodModel.dart';
import 'package:http/http.dart' as http;

class FoodApi {
  Future<List<FoodModel>> getFood() async {
    var getApi = '$mealsApi';
    var headers = {'Content-Type': 'application/json'};
    var responBody = await http.get(Uri.parse(getApi), headers: headers);
    print(responBody.body);

    if (responBody.statusCode == 200) {
      List data = jsonDecode(responBody.body)['meals'];
      
      List<FoodModel> getFood = [];
      for (var item in data) {
        getFood.add(FoodModel.fromJson(item));
      }

      return getFood;
    } else {
      throw Exception('Gagal Get Food');
    }
  }
}
