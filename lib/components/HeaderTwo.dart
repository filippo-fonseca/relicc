import 'package:flutter/material.dart';

class HeaderTwo extends StatelessWidget {
  const HeaderTwo({
    Key key,
    @required this.artist,
  }) : super(key: key);

  final String artist;

  @override
  Widget build(BuildContext context) {
    return Text(
      artist,
      style: TextStyle(
        color: Color(0xff857E78),
        fontFamily: "Neutron",
        fontWeight: FontWeight.w900,
        fontSize: 17,
      ),
    );
  }
}
