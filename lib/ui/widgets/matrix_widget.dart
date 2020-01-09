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
            children: <Widget>[
              XWidget(), _verticalWidget(), XWidget(), _verticalWidget(), XWidget(),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              XWidget(),_verticalWidget(), XWidget(),_verticalWidget(), CircleWidget(isDark: false)
            ],
          ),
          VerticalDivider(),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              XWidget(), _verticalWidget(), CircleWidget(isDark: false), _verticalWidget(), XWidget()
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      var brightness = MediaQuery.of(context).platformBrightness;

      _isDark = brightness == Brightness.dark;
    });

    WidgetsBinding.instance.addPostFrameCallback(
            (_) {
              setState(() {
                _rowHeight = _rowKey.currentContext.size.height;
              });
            });



  }


  Widget _verticalWidget() {
    return Container(height: _rowHeight, child: VerticalDivider(color: Colors.grey));
  }
}
