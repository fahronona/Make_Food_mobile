class MealModel {
  List<Meals> meals = [];
  String error = "";

  MealModel.withError(String errorMessage) {
    error = errorMessage;
  }

  MealModel({this.meals = const []});

  MealModel.fromJson(Map<String, dynamic> json) {
    if (json['meals'] != null) {
      meals = <Meals>[];
      json['meals'].forEach((v) {
        meals.add(new Meals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meals != null) {
      data['meal'] = this.meals.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Meals {
  String idMeal = "";
  String strMeal = "";
  String strCategory = "";
  String strArea = "";
  String strInstructions = "";
  String strMealThumb = "";

  Meals(
      {this.idMeal = "",
      this.strMeal = "",
      this.strCategory = "",
      this.strArea = "",
      this.strInstructions = "",
      this.strMealThumb = ""});

  Meals.fromJson(Map<String, dynamic> json) {
    idMeal = json['idMeal'];
    strMeal = json['strMeal'];
    strCategory = json['strCategory'];
    strArea = json['strArea'];
    strInstructions = json['strInstructions'];
    strMealThumb = json['strMealThumb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idMeal'] = this.idMeal;
    data['strMeal'] = this.strMeal;
    data['strCategory'] = this.strCategory;
    data['strArea'] = this.strArea;
    data['strInstructions'] = this.strInstructions;
    data['strMealThumb'] = this.strMealThumb;
    return data;
  }
}
