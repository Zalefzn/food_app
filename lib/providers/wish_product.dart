import 'package:flutter/material.dart';
import 'package:food_recipt/models/category_model.dart';

class CategoryProvider with ChangeNotifier {
  List<CategoryModel> _category = [];

  List<CategoryModel> get getCategory => _category;

  set getCategory(List<CategoryModel> category) {
    _category = category;
    notifyListeners();
  }
  
  setProducts(CategoryModel model) {
    if (!isWishProduct(model)) {
      _category.add(model);
    } else {
      _category
          .removeWhere((element) => element.idCategory == model.idCategory);
    }
  }

  isWishProduct(CategoryModel model) {
    if (_category
            .indexWhere((element) => element.idCategory == model.idCategory) ==
        -1) {
      return false;
    } else {
      return true;
    }
  }
}
