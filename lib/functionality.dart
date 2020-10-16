import 'package:flutter/material.dart';

class DataProperty {
  String artwork;
  String artist;
  String description;

  DataProperty(
      {@required this.artist,
      @required this.artwork,
      @required this.description});
}

List<DataProperty> database = [
  DataProperty(
    artist: "Pythagoras de Reggio",
    artwork: "Atenea Partenos",
    description:
        "The Auriga was a part of a group dedicated to Apollo by the tyrant Polyzalos of Geia (Sicily), so he has...",
  ),
  DataProperty(
    artist: "Pithagoras de Reggio",
    artwork: "Atenea Partenos",
    description:
        "The Auriga was a part of a group dedicated to Apollo by the tyrant Polyzalos of Geia (Sicily), so he has...",
  ),
  DataProperty(
    artist: "Pithagoras de Reggio",
    artwork: "Atenea Partenos",
    description:
        "The Auriga was a part of a group dedicated to Apollo by the tyrant Polyzalos of Geia (Sicily), so he has...",
  ),
];
