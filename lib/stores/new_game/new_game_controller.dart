import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:tic_tac_toe_flutter/ui/in_game_screen.dart';

part 'new_game_controller.g.dart';

class NewGameController = NewGameBase with _$NewGameController;

abstract class NewGameBase with Store {

  @action
  startGame(context) {

    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => InGameScreen()));
  }

  @action
  exitGame() {}
}
