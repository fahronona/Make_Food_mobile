import 'package:bloc/bloc.dart';
import 'package:making_food/bloc/state.dart';
import 'package:making_food/service/api_repository.dart';

enum NavbarItem { mainPage, favoritePage, profilePage }

class NavbarBloc extends Bloc<NavbarItem, NavbarState> {
  NavbarBloc(NavbarState initialState) : super(ShowHomePage());

  @override
  Stream<NavbarState> mapEventToState(NavbarItem event) async* {
    switch (event) {
      case NavbarItem.profilePage:
        yield ShowProfilPage();
        break;
      case NavbarItem.favoritePage:
        yield ShowFavoritePage();
        break;
      default:
        yield ShowHomePage();
        break;
    }
  }
}

abstract class MealEvent {
  const MealEvent();
}

class GetMealList extends MealEvent {
  List<Object>? get props => null;
}

class MealBloc extends Bloc<MealEvent, MealState> {
  MealBloc(MealState initialState) : super(initialState);
  final ApiRepository _apiRepository = ApiRepository();
  @override
  Stream<MealState> mapEventToState(
    MealEvent event,
  ) async* {
    if (event is GetMealList) {
      try {
        yield const MealLoading();
        final mList = await _apiRepository.fetchMealList();
        //print(mList.meals.length);
        yield MealLoaded(mList);
        // if (mList.error != null) {
        //   yield MealError(mList.error);
        // }
        //yield MealError(mList.error);
      } on NetworkError {
        yield const MealError("Gagal Memuat Data");
      }
    }
  }
}

enum FavEvent { fav, unFav }

class FavBloc extends Bloc<FavEvent, FavState> {
  FavBloc(FavState initialState) : super(initialState);
  @override
  Stream<FavState> mapEventToState(FavEvent event) async* {
    switch (event) {
      case FavEvent.fav:
        yield OnFav();
        break;
      default:
        yield OnUnFav();
        break;
    }
  }
}
