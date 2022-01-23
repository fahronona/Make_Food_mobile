import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:making_food/bloc/bloc.dart';
import 'package:making_food/bloc/state.dart';
import 'package:making_food/components/card_food.dart';
import 'package:making_food/components/search_field.dart';
import 'package:making_food/model/meal_model.dart';
import 'package:making_food/service/dio_api_services.dart';
import 'package:making_food/view/detail_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MealBloc _mealBloc = MealBloc(const MealInitial());
  @override
  void initState() {
    _mealBloc.add(GetMealList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.width / 2.7,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/mainpage_up.png",
                  )),
              Positioned(
                  top: 75,
                  right: 18,
                  left: 18,
                  child: searchField(
                      fillcolor: Colors.white,
                      iconColors: const Color(0xff4CCB41),
                      hintTex: "Search recipe")),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 21, left: 28),
          child: Text("Recommendations Recipe",
              style: GoogleFonts.poppins()
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
        ),
        Expanded(
            child: BlocBuilder<MealBloc, MealState>(
                bloc: _mealBloc,
                builder: (BuildContext context, MealState state) {
                  if (state is MealInitial) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 2.5),
                      child: Container(
                          height: 20,
                          width: 60,
                          child:
                              const Center(child: CircularProgressIndicator())),
                    );
                  } else if (state is MealLoading) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 2.5),
                      child: Container(
                          height: 20,
                          width: 60,
                          child:
                              const Center(child: CircularProgressIndicator())),
                    );
                  } else if (state is MealLoaded) {
                    return buildCard(context, state.mealModel);
                  } else if (state is MealError) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 3),
                      child: Container(
                          height: 150,
                          width: 150,
                          child:
                              Center(child: Image.asset("assets/error.png"))),
                    );
                  }

                  return Container(
                      child: Center(child: Image.asset("assets/error.png")));
                }))
      ],
    );
  }
}

Widget buildCard(BuildContext context, MealModel model) {
  return ListView.builder(
      itemCount: model.meals.length,
      itemBuilder: (context, index) {
        return cardFood(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailPage(
                        urlImage: model.meals[index].strMealThumb,
                        title: model.meals[index].strMeal,
                        area: model.meals[index].strArea,
                        category: model.meals[index].strCategory,
                        instruction: model.meals[index].strInstructions,
                        idMeal: model.meals[index].idMeal,
                      )));
        },
            urlImage: model.meals[index].strMealThumb,
            title: model.meals[index].strMeal,
            area: model.meals[index].strArea,
            category: model.meals[index].strCategory);
      });
}

// faris mau nyoba
