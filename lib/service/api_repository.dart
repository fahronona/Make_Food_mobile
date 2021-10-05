import 'package:making_food/model/meal_model.dart';
import 'package:making_food/service/dio_api_services.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<MealModel> fetchMealList() {
    return _provider.fetchMealList();
  }
}

class NetworkError extends Error {}
