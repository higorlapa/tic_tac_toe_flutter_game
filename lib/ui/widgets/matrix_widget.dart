import 'package:flutter/material.dart';

class MatrixWidget extends StatefulWidget {
  @override
  _MatrixWidgetState createState() => _MatrixWidgetState();
}

class _MatrixWidgetState extends State<MatrixWidget> {

  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              /// 1, 2, 3
            ],
          ),
          Row(
            children: <Widget>[
              /// 4, 5, 6
            ],
          ),
          Row(
            children: <Widget>[
              /// 7, 8, 9
            ],
          )
        ],
      ),
    )
  }

  @override
  void initState() {
    super.initState();

    var brightness = MediaQuery.of(context).platformBrightness;

    _isDark = brightness == Brightness.dark;

  }
}
