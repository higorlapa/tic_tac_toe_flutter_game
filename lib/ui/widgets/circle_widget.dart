import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final bool isDark;

  CircleWidget({this.isDark}) : assert(isDark != null);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10),
        width: 20,
        height: 20,
        decoration: new BoxDecoration(
            border: Border.all(
              color: this.isDark ? Colors.white : Colors.black,
            ),
            shape: BoxShape.circle));
  }
}
