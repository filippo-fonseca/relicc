import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      color: Colors.red,
      child: SafeArea(
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
