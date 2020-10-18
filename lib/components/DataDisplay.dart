import 'package:flutter/material.dart';
import 'ArtworkDisplay.dart';
import 'DescriptionText.dart';
import 'HeaderOne.dart';
import 'HeaderTwo.dart';

class DisplayData extends StatelessWidget {
  final String description;
  final String artist;
  final String artwork;
  final int image;

  DisplayData({
    @required this.description,
    @required this.artwork,
    @required this.image,
    @required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 300,
        child: Column(
          children: [
            SizedBox(height: 30),
            ArtworkDisplay(
              artwork: image,
            ),
            SizedBox(height: 30),
            HeaderOne(artwork: artwork),
            HeaderTwo(artist: artist),
            SizedBox(
              height: 30,
            ),
            DescriptionText(description: description),
          ],
        ),
      ),
    );
  }
}
