import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'splash.g.dart';

class SplashController = SplashBase with _$SplashController;

abstract class SplashBase with Store {
  @observable
  double centerColumnOpacity = 0;

  @observable
  double bottomTextPosition = -100;

  @action
  initUI() async {
    await Future.delayed(const Duration(seconds: 2), () {
      this.centerColumnOpacity = 1;
      this.bottomTextPosition = 0;
    });
  }
}
