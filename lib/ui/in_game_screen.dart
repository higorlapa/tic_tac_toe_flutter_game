import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/ui/widgets/matrix_widget.dart';

class InGameScreen extends StatefulWidget {
  @override
  _InGameScreenState createState() => _InGameScreenState();
}

class _InGameScreenState extends State<InGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MatrixWidget(),
      ),
    );
  }
}
