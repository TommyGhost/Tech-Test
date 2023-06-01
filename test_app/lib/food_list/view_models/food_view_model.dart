import 'package:flutter/material.dart';
import 'package:test_app/food_list/models/food_list_model.dart';
import 'package:test_app/food_list/models/food_error.dart';
import 'package:test_app/food_list/repository/api_status.dart';
import 'package:test_app/food_list/repository/food_services.dart';

class FoodViewModel extends ChangeNotifier {
  bool _loading = false;
  List<FoodModel> _foodListModel = [];
  FoodError? _foodError;

  bool get loading => _loading;
  List<FoodModel> get foodListModel => _foodListModel;
  FoodError? get foodError => _foodError;

  FoodViewModel() {
    getRecipes();
  }

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  setFoodListModel(List<FoodModel> foodListModel) {
    _foodListModel = foodListModel;
  }

  setFoodError(FoodError foodError) {
    _foodError = foodError;
    notifyListeners();
  }

  getRecipes() async {
    setLoading(true);
    var response = await FoodServices.getFood();
    if (response is Success) {
      setFoodListModel(response.response as List<FoodModel>);
      notifyListeners();
    }
    if (response is Failure) {
      FoodError foodError = FoodError(
        code: response.code,
        message: response.errorResponse,
      );
      setFoodError(foodError);
    }
    setLoading(false);
  }
}
