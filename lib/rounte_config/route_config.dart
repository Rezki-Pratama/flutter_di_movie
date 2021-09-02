import 'package:flutter/material.dart';
import 'package:flutter_sample/ui/favorite_movies/favorite_movie_screen.dart';
import 'package:flutter_sample/ui/home/home_screen.dart';
import 'package:flutter_sample/ui/movie_detail/movie_detail_screen.dart';
import 'package:flutter_sample/ui/search/search_screen.dart';
import 'package:flutter_sample/ui/show_all_movies/show_all_movie_screen.dart';
import 'package:flutter_sample/ui/splash/splash_screen.dart';

class RouteConfig {
  static const ROUTE_SPLASH = "/splash";
  static const ROUTE_HOME = "/home";
  static const ROUTE_SHOW_ALL = "/show_all";
  static const ROUTE_MOVIE_DETAIL = "/movie_detail";
  static const ROUTE_SEARCH = "/search";
  static const ROUTE_FAVORITE = "/favorite_movie";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    Route result;
    switch (settings.name) {
      case ROUTE_SPLASH:
        result = MaterialPageRoute(builder: (_) => SplashScreen());
        break;
      case ROUTE_HOME:
        result = PageRouteBuilder(
          pageBuilder: (_, __, ___) => HomeScreen(),
          transitionDuration: Duration(milliseconds: 400),
        );
        break;
      case ROUTE_SHOW_ALL:
        result = MaterialPageRoute(
            builder: (_) => ShowAllMovieScreen(typeShowAll: args));
        break;
      case ROUTE_MOVIE_DETAIL:
        result =
            MaterialPageRoute(builder: (_) => MovieDetailScreen(movieId: args));
        break;
      case ROUTE_SEARCH:
        result = MaterialPageRoute(builder: (_) => SearchScreen());
        break;
      case ROUTE_FAVORITE:
        result = MaterialPageRoute(builder: (_) => FavoriteMovieScreen());
        break;
    }
    return result;
  }
}
