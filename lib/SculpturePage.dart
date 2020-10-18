import 'package:flutter/material.dart';
import 'package:relicc/assets/ReliccIcons.dart';
import 'components/BackgroundImage.dart';
import 'components/TopIcon.dart';
import 'components/GradientWithOpacity.dart';
import 'constants.dart';
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
              title: Text(kAppBarTitle, style: kAppBarTextStyle),
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
