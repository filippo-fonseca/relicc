import 'package:flutter/material.dart';
import 'package:relicc/assets/ReliccIcons.dart';
import 'components/BackgroundImage.dart';
import 'components/TopIcon.dart';
import 'components/GradientWithOpacity.dart';
import 'constants.dart';
import 'components/BottomNavBar.dart';
import 'components/ArtworkDisplay.dart';
import 'components/HeaderOne.dart';

class SculpturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BackgroundImage(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            leading: TopIcon(
              size: 30,
              icon: ReliccIcons.menu,
              padding: EdgeInsets.only(left: 20),
            ),
            title: Text(kAppBarTitle, style: kAppBarTextStyle),
            actions: [
              TopIcon(
                size: 29,
                icon: ReliccIcons.mags,
                padding: EdgeInsets.only(right: 24),
              ),
            ],
          ),
          body: GradientWithOpacity(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DisplayData(
                  image: 0,
                  artwork: "Mona Lisa",
                ),
                BottomNavBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DisplayData extends StatelessWidget {
  final String description;
  final String artist;
  final String artwork;
  final int image;

  DisplayData({
    this.description,
    @required this.artwork,
    @required this.image,
    this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          SizedBox(height: 30),
          ArtworkDisplay(
            artwork: image,
          ),
          SizedBox(height: 30),
          HeaderOne(artwork: artwork),
          SizedBox(height: 6),
          Text("SU TATAT",
              style: TextStyle(
                color: Colors.red,
              ))
        ],
      ),
    );
  }
}
