import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:making_food/model/meal_model.dart';
import 'package:making_food/view/favorit_page.dart';
import 'package:making_food/view/main_page.dart';
import 'package:making_food/view/profile_page.dart';

abstract class NavbarState {}

class ShowHomePage extends NavbarState {
  final Widget body = const MainPage();
  final int itemIndex = 0;
  final Color appBarColor = const Color(0xff4CCB41);
  final Color iconColor = Colors.white;
  final String asset = "assets/logo_appbar.png";
}

class ShowFavoritePage extends NavbarState {
  final Widget body = const FavoritePage();
  final int itemIndex = 1;
  final Color appBarColor = Colors.white;
  final Color iconColor = const Color(0xff4CCB41);
  final String asset = "assets/logo_banner.png";
}

class ShowProfilPage extends NavbarState {
  final Widget body = const ProfilePage();
  final int itemIndex = 2;
  final Color appBarColor = Colors.white;
  final Color iconColor = const Color(0xff4CCB41);
  final String asset = "assets/logo_banner.png";
}

abstract class MealState {
  const MealState();
}

class MealInitial extends MealState {
  const MealInitial();
  List<Object> get props => [];
}

class MealLoading extends MealState {
  const MealLoading();
  List<Object>? get props => null;
}

class MealLoaded extends MealState {
  final MealModel mealModel;
  const MealLoaded(this.mealModel);
  List<Object> get props => [mealModel];
}

class MealError extends MealState {
  final String message;
  const MealError(this.message);
  List<Object> get props => [message];
}

abstract class FavState {}

class OnFav extends FavState {
  final IconData icon = Icons.favorite;
}

class OnUnFav extends FavState {
  final IconData icon = Icons.favorite_border;
}
