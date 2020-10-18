import 'package:flutter/material.dart';

class HeaderOne extends StatelessWidget {
  const HeaderOne({
    Key key,
    @required this.artwork,
  }) : super(key: key);

  final String artwork;

  @override
  Widget build(BuildContext context) {
    return Text(
      artwork,
      style: TextStyle(
        color: Color(0xffF5E9DD),
        fontSize: 40,
        fontFamily: "Ayar Juno",
      ),
    );
  }
}
