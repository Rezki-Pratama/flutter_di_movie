import 'package:flutter/material.dart';

// Colos that use in our app
const kSecondaryColor = Color(0xFFf48210);
const kTextColor = Colors.white;
const kTextLightColor = Colors.white70;
const kFillStarColor = Color(0xFFFCC419);
const Color kColorChipItem = const Color(0xFF192431);
const Color kColorItemDarker = const Color(0xFF002431);

const bgColor = Color(0xFF243142);
const kDefaultPadding = 20.0;

const kDefaultShadow = BoxShadow(
  offset: Offset(0, 4),
  blurRadius: 4,
  color: Colors.black26,
);

class Category {
  final String name;
  final String keyQuery;

  const Category({@required this.name, @required this.keyQuery});
}

const listCategory = [
  Category(name: "Now Playing", keyQuery: "now_playing"),
  Category(name: "Popular", keyQuery: "popular"),
  Category(name: "Top Rated", keyQuery: "top_rated"),
  Category(name: "Coming Soon", keyQuery: "upcoming"),
];

const messageError = "Oops! Some error occurred ( ͡° ͜ʖ ͡°)";
