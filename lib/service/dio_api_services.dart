import 'package:dio/dio.dart';
import 'package:making_food/model/meal_model.dart';

class ApiProvider {
  final Dio dio = Dio();
  final String url = 'https://www.themealdb.com/api/json/v1/1/search.php?f=b';

  Future<MealModel> fetchMealList() async {
    try {
      Response response = await dio.get(url);
      // print(response.data);
      return MealModel.fromJson(response.data);
    } catch (e) {
      return MealModel.withError(e.toString());
    }
  }
}
