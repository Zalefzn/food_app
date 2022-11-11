import 'package:flutter/material.dart';

class FoodModel {
  String? meal;
  String? pictTumb;
  String? idMeal;
  
  FoodModel({
    required this.meal,
    required this.pictTumb,
    required this.idMeal,
  });

  FoodModel.fromJson(Map<String, dynamic> json) {
    meal = json["strMeal"];
    pictTumb = json["strMealThumb"];
    idMeal = json["idMeal"];
  }
  
  Map<String, dynamic> toJson() {
    return {
      'strMeal': meal,
      'strMealThumb': pictTumb,
      'idMeal': idMeal,
    };
  }
}
