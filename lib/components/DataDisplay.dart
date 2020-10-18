import 'package:flutter/material.dart';
import 'ArtworkDisplay.dart';
import 'HeaderOne.dart';
import 'HeaderTwo.dart';
import 'package:relicc/functionality.dart';
import 'package:url_launcher/url_launcher.dart';

class DisplayData extends StatelessWidget {
  final String artist;
  final String artwork;
  final int image;
  final String url;

  DisplayData({
    @required this.url,
    @required this.artwork,
    @required this.image,
    @required this.artist,
  });

  _launchURL() async {
    String url = this.url;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL,
      child: Padding(
        padding: EdgeInsets.fromLTRB(12, 90, 12, 0),
        child: Container(
          width: 300,
          child: Column(
            children: [
              SizedBox(height: 30),
              ArtworkDisplay(
                artwork: image,
              ),
              SizedBox(height: 30),
              HeaderOne(artwork: lengthChecker(artwork)),
              HeaderTwo(artist: artist),
            ],
          ),
        ),
      ),
    );
  }
}
