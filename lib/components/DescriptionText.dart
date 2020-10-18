import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key key,
    @required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description.substring(0, 200) + "...",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xffA8A39F),
        fontFamily: "Product Sans",
        fontStyle: FontStyle.italic,
        fontSize: 19,
      ),
    );
  }
}
