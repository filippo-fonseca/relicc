import "package:flutter/material.dart";

class ArtworkDisplay extends StatelessWidget {
  final int artwork;
  ArtworkDisplay({@required this.artwork});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 270,
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          image: AssetImage("assets/images/$artwork.png"),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.8),
            blurRadius: 70,
            offset: Offset(0, 35),
            spreadRadius: 15,
          )
        ],
      ),
    );
  }
}
