import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:tic_tac_toe_flutter/ui/widgets/circle_widget.dart';
import 'package:tic_tac_toe_flutter/ui/widgets/x_widget.dart';

class MatrixWidget extends StatefulWidget {
  @override
  _MatrixWidgetState createState() => _MatrixWidgetState();
}

class _MatrixWidgetState extends State<MatrixWidget> {
  bool _isDark = false;
  final GlobalKey _rowKey = GlobalKey();
  double _rowHeight = 10;

  List<Widget> _rowOneList = List();
  List<Widget> _rowTwoList = List();
  List<Widget> _rowThreeList = List();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
              key: _rowKey,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _rowOneList),
          Divider(),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _rowTwoList),
          VerticalDivider(),
          Divider(),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _rowThreeList)
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      var brightness = MediaQuery.of(context).platformBrightness;

      setState(() {
        _isDark = brightness == Brightness.dark;
        _rowHeight = _rowKey.currentContext.size.height;
        _initLists();
      });
    });
  }

  Widget _verticalWidget() {
    return Container(
        height: _rowHeight, child: VerticalDivider(color: Colors.grey));
  }

  _initLists() {
    /// Positions 0,2,4

    List<Widget> defaultList = [
      Container(height: 30, width: 30),
      _verticalWidget(),
      Container(height: 30, width: 30),
      _verticalWidget(),
      Container(height: 30, width: 30)
    ];

    _rowOneList = [...defaultList];
    _rowTwoList = [...defaultList];
    _rowThreeList = [...defaultList];
  }
}
