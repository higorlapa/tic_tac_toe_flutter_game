import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:tic_tac_toe_flutter/stores/new_game/new_game_controller.dart';

import 'in_game_screen.dart';

class NewGameScreen extends StatefulWidget {
  @override
  _NewGameScreenState createState() => _NewGameScreenState();
}

class _NewGameScreenState extends State<NewGameScreen> {
  final _newGameController = NewGameController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: FlatButton(
                  onPressed: () {
                    _newGameController.startGame(context);
                  },
                  child: Text(
                    'New Game',
                    style: TextStyle(fontSize: 22),
                  ),
                )),
            FlatButton(
              onPressed: _newGameController.exitGame(),
              child: Text(
                'Exit',
                style: TextStyle(fontSize: 22),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
