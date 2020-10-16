import 'package:flutter/material.dart';

class GradientWithOpacity extends StatelessWidget {
  final Widget child;
  GradientWithOpacity({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff635b52).withOpacity(0),
            Color(0xff635b52).withOpacity(0.6),
            Color(0xff433D37).withOpacity(0.7),
            Color(0xff1D1C1B).withOpacity(0.9),
            Color(0xff100F10),
          ],
        ),
      ),
      width: double.infinity,
      height: double.infinity,
      child: child,
    );
  }
}
