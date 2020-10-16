import 'package:flutter/material.dart';
import '../constants.dart';

class TopIcon extends StatelessWidget {
  final IconData icon;
  final EdgeInsets padding;
  final double size;

  TopIcon({@required this.icon, this.padding, @required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Icon(
        icon,
        size: size,
        color: kTopIconColor,
      ),
    );
  }
}
