import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:test_app/food_list/models/food_list_model.dart';
import 'package:test_app/food_list/repository/api_status.dart';
import 'package:test_app/utils/constants.dart';

class FoodServices {
  static Future<Object> getFood() async {
    try {
      var url = Uri.parse(apiUrl);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        return Success(response: foodModelFromJson(response.body));
      }
      return Failure(code: 100, errorResponse: 'Invalid Response,Try again later');
    } on HttpException {
      return Failure(code: 101, errorResponse: 'No Interne');
    } on FormatException {
      return Failure(code: 102, errorResponse: 'Invalid Format');
    } catch (e) {
      return Failure(code: 103, errorResponse: 'Unknown Error');
    }
  }
}
