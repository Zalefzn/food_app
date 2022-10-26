import 'package:flutter/material.dart';

class CategoryModel {
  late String? idCategory;
  late String? categoryFood;
  late String? pictThumb;
  late String? description;

  CategoryModel(
      this.idCategory, this.categoryFood, this.description, this.pictThumb);

  CategoryModel.fromJson(Map<String, dynamic> json) {
    idCategory = json["idCategory"];
    categoryFood = json["strCategory"];
    pictThumb = json["strCategoryThumb"];
    description = json["strCategoryDescription"];
  }

  Map<String, dynamic> toJson() {
    return {
      "idCategory": idCategory,
      "strCategory": categoryFood,
      "strCategoryThumb": pictThumb,
      "strCategoryDescription": description,
    };
  }
}
