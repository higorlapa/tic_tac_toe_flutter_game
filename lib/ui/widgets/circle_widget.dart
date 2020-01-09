import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final bool isDark;

  CircleWidget({this.isDark}) : assert(isDark != null);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 20,
        height: 20,
        decoration: new BoxDecoration(
            border: Border.all(
              color: this.isDark ? Colors.white : Colors.black,
            ),
            shape: BoxShape.circle));
  }
}
