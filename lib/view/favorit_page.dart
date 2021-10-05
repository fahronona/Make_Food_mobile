import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:making_food/components/card_food.dart';
import 'package:making_food/components/search_field.dart';
import 'package:making_food/moor/moor_data.dart';
import 'package:making_food/view/detail_page.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, right: 18, left: 18),
          child: Container(
            height: 50,
            child: searchField(
                fillcolor: const Color(0xff4CCB41),
                iconColors: Colors.white,
                hintTex: "Search favorite recipe",
                hintColor: Colors.white,
                textColor: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 28, bottom: 5),
          child: Container(
            height: 50,
            child: Text("Favorite Recipe",
                style: GoogleFonts.poppins()
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w600)),
          ),
        ),
        Expanded(
            // height: MediaQuery.of(context).size.height / 3,
            child: StreamBuilder(
          stream: AppDatabase().watchAllMeal(),
          builder: (context, AsyncSnapshot<List<Food>> snapshot) {
            return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (_, index) {
                  if (snapshot.hasData) {
                    return cardFood(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(
                                    urlImage: snapshot.data![index].urlImage,
                                    title: snapshot.data![index].title,
                                    area: snapshot.data![index].area,
                                    category: snapshot.data![index].category,
                                    instruction:
                                        snapshot.data![index].instruction,
                                    idMeal: snapshot.data![index].idmeal,
                                  )));
                    },
                        area: snapshot.data![index].area,
                        title: snapshot.data![index].title,
                        category: snapshot.data![index].category,
                        urlImage: snapshot.data![index].urlImage);
                  } else {
                    return Container(
                      height: 20,
                    );
                  }
                });
          },
        )),
      ],
    );
  }
}
