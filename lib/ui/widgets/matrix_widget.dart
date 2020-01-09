import 'package:flutter/material.dart';

class MatrixWidget extends StatefulWidget {
  @override
  _MatrixWidgetState createState() => _MatrixWidgetState();
}

class _MatrixWidgetState extends State<MatrixWidget> {

  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var brightness = MediaQuery.of(context).platformBrightness;

    _isDark = brightness == Brightness.dark;

  }
}
