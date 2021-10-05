import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:making_food/bloc/bloc.dart';
import 'package:making_food/bloc/state.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  NavbarBloc _navbarBloc = NavbarBloc(ShowHomePage());

  @override
  void initState() {
    super.initState();
    _navbarBloc = NavbarBloc(ShowHomePage());
  }

  @override
  void dispose() {
    _navbarBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _navbarBloc,
      builder: (BuildContext context, NavbarState state) {
        //return buildPage(state.body, state.itemIndex);
        if (state is ShowHomePage) {
          return buildPage(state.body, state.itemIndex, state.appBarColor,
              state.asset, state.iconColor);
        }
        if (state is ShowFavoritePage) {
          return buildPage(state.body, state.itemIndex, state.appBarColor,
              state.asset, state.iconColor);
        }
        if (state is ShowProfilPage) {
          return buildPage(state.body, state.itemIndex, state.appBarColor,
              state.asset, state.iconColor);
        }

        return Container();
      },
    );
  }

  Scaffold buildPage(Widget body, int currentIndex, Color appbarcolor,
      String assets, Color iconcolor) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appbarcolor,
          leadingWidth: 100,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(assets),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.settings,
                color: iconcolor,
              ),
            )
          ],
          // title: const Text("appbar"),
        ),
        body: body,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            if (index == 0) _navbarBloc.add(NavbarItem.mainPage);
            if (index == 1) _navbarBloc.add(NavbarItem.favoritePage);
            if (index == 2) _navbarBloc.add(NavbarItem.profilePage);
          },
          items: const [
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.menu_book_rounded,
                  color: Color(0xff4CCB41),
                ),
                icon: Icon(Icons.menu_book_rounded),
                label: ""),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                activeIcon: Icon(
                  Icons.favorite,
                  color: Color(0xff4CCB41),
                ),
                icon: Icon(Icons.favorite),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(
                  Icons.person,
                  color: Color(0xff4CCB41),
                ),
                icon: Icon(Icons.person),
                label: "")
          ],
        ));
  }
}
