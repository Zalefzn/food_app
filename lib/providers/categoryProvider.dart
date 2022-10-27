import 'package:flutter/material.dart';
import 'package:food_recipt/api/categoryApi.dart';
import 'package:food_recipt/models/category_model.dart';

class CategoryProvider with ChangeNotifier {
  List<CategoryModel> _category = [];

  List<CategoryModel> get getCategory => _category;

  set getCategory(List<CategoryModel> category) {
    _category = category;
    notifyListeners();
  }

  Future<void> getCategorys() async {
    try {
      List<CategoryModel> category = await CategoryApi().getCategory();

      _category = category;
    } catch (e) {
      print(e);
    }
  }
}
