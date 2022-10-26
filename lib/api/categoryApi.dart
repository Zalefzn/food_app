import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_recipt/models/category_model.dart';
import 'package:food_recipt/api/link_api.dart';
import 'package:http/http.dart' as http;

class CategoryApi {
  Future<List<CategoryModel>> getCategory() async {
    var getApi = '$categoryApi';
    var headers = {'Content-Type': 'application/json'};
    var responBody = await http.get(Uri.parse(getApi), headers: headers);
    print(responBody.body);

    if (responBody.statusCode == 200) {
      List data = jsonDecode(responBody.body)['categories'];

      List<CategoryModel> getCategory = [];
      for (var item in data) {
        getCategory.add(CategoryModel.fromJson(item));
      }

      return getCategory;
    } else {
      throw Exception('Gagal Get Category');
    }
  }
}
