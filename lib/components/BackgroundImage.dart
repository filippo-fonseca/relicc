import "package:flutter/material.dart";

class BackgroundImage extends StatelessWidget {
  final Widget child;

  BackgroundImage({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
