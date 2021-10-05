import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:making_food/bloc/bloc.dart';
import 'package:making_food/bloc/state.dart';
import 'package:making_food/model/meal_model.dart';
import 'package:making_food/moor/moor_data.dart';

class DetailPage extends StatefulWidget {
  final String urlImage;
  final String title;
  final String area;
  final String category;
  final String instruction;
  final String idMeal;
  const DetailPage(
      {Key? key,
      this.urlImage = "",
      this.title = "-",
      this.area = "-",
      this.category = "-",
      this.instruction = "-",
      this.idMeal = ""})
      : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  FavBloc _favBloc = FavBloc(OnUnFav());

  @override
  void initState() {
    // TODO: implement initState
    AppDatabase().checkFav(widget.idMeal).then((value) {
      if (value.isNotEmpty) {
        _favBloc.add(FavEvent.fav);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: Colors.grey[300],
            height: MediaQuery.of(context).size.height / 2.4,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.grey[300],
                    height: MediaQuery.of(context).size.height / 2.4,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      widget.urlImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: -2,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(Icons.arrow_back_ios_rounded,
                              color: Colors.green),
                        ),
                      ),
                      Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: BlocBuilder(
                            bloc: _favBloc,
                            builder: (BuildContext context, FavState state) {
                              if (state is OnFav) {
                                return InkWell(
                                  onTap: () {
                                    _favBloc.add(FavEvent.unFav);
                                    AppDatabase().deleteMeal(Food(
                                      area: widget.area,
                                      category: widget.category,
                                      title: widget.title,
                                      idmeal: widget.idMeal,
                                      instruction: widget.instruction,
                                      urlImage: widget.urlImage,
                                    ));
                                  },
                                  child: Icon(state.icon, color: Colors.green),
                                );
                              }
                              if (state is OnUnFav) {
                                return InkWell(
                                    onTap: () {
                                      _favBloc.add(FavEvent.fav);
                                      AppDatabase().insertNewMeal(Food(
                                        area: widget.area,
                                        category: widget.category,
                                        title: widget.title,
                                        idmeal: widget.idMeal,
                                        instruction: widget.instruction,
                                        urlImage: widget.urlImage,
                                      ));

                                      AppDatabase().close();
                                    },
                                    child:
                                        Icon(state.icon, color: Colors.green));
                              }

                              return const Icon(Icons.favorite);
                            },
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowGlow();
              return false;
            },
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 28),
                  child: Text(widget.title,
                      style: GoogleFonts.poppins()
                          .copyWith(fontSize: 22, fontWeight: FontWeight.w600)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 28),
                  child: Text(widget.area,
                      style: GoogleFonts.poppins()
                          .copyWith(fontSize: 18, fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 28),
                  child: Text(widget.category,
                      style: GoogleFonts.poppins().copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.green)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 28),
                  child: Text("Instruction",
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 28, right: 28),
                  child: Text(
                    widget.instruction,
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
