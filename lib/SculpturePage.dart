import 'package:flutter/material.dart';
import 'package:relicc/assets/ReliccIcons.dart';
import 'components/BackgroundImage.dart';
import 'components/TopIcon.dart';
import 'components/GradientWithOpacity.dart';
import 'constants.dart';
import 'components/BottomNavBar.dart';
import 'components/DataDisplay.dart';
import 'functionality.dart';

class SculpturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BackgroundImage(
        child: GradientWithOpacity(
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
            body: SafeArea(
              child: ListView.builder(
                itemBuilder: (_, index) {
                  return DisplayData(
                    url: database[index].url,
                    artist: database[index].artist,
                    artwork: database[index].artwork,
                    image: index,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: database.length,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
