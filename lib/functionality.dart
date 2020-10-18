import 'package:flutter/material.dart';

class DataProperty {
  String artwork;
  String artist;
  String url;

  DataProperty({
    @required this.url,
    @required this.artist,
    @required this.artwork,
  });
}

String lengthChecker(String str) {
  return str.length >= 15 ? str.substring(0, 11) + "..." : str;
}

List<DataProperty> database = [
  DataProperty(
    artwork: "Mona Lisa",
    artist: "Leonardo DaVinci",
    url: "https://en.wikipedia.org/wiki/Mona_Lisa",
  ),
  DataProperty(
    artwork: "The Last Supper",
    artist: "Leonardo DaVinci",
    url: "https://en.wikipedia.org/wiki/The_Last_Supper_(Leonardo)",
  ),
  DataProperty(
    artwork: "Washington Crossing the Delaware",
    artist: "Emanuel Leutze",
    url:
        "https://en.wikipedia.org/wiki/Washington_Crossing_the_Delaware_(1851_painting)",
  ),
  DataProperty(
    artwork: "Liberty Leading the People",
    artist: "Eugène Delacroix",
    url: "https://en.wikipedia.org/wiki/Liberty_Leading_the_People",
  ),
  DataProperty(
    artwork: "The Birth of Venus",
    artist: "Sandro Botticelli",
    url: "https://en.wikipedia.org/wiki/The_Birth_of_Venus",
  ),
  DataProperty(
    artwork: "The Wedding Feast at Cana",
    artist: "Paolo Veronese",
    url: "https://en.wikipedia.org/wiki/The_Wedding_at_Cana",
  ),
  DataProperty(
      artwork: "The Madonna of the Carnation",
      artist: "Bernardino Luini",
      url: "https://en.wikipedia.org/wiki/Madonna_of_the_Carnation"),
];
