import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tic_tac_toe_flutter/stores/splash/splash.dart';
import 'package:tic_tac_toe_flutter/ui/new_game_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _splashController = SplashController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Center(child: Observer(
          builder: (_) {
            return AnimatedOpacity(
              opacity: _splashController.centerColumnOpacity,
              duration: const Duration(seconds: 2),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Tic Tac Toe',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text('X O'),
                ],
              ),
            );
          },
        )),
        Observer(
          builder: (_) {
            return AnimatedPositioned(
                bottom: _splashController.bottomTextPosition,
                left: 0,
                right: 0,
                duration: const Duration(seconds: 1),
                child: Text(
                  'Powered By Flutter',
                  textAlign: TextAlign.center,
                ));
          },
        )
      ],
    ));
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIOverlays([]);

    SchedulerBinding.instance.addPostFrameCallback((_) {
      _startScreen();
    });
  }

  _startScreen() async {

    await _splashController.initUI();

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => NewGameScreen()));
  }
}
