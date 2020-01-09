// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashController on SplashBase, Store {
  final _$centerColumnOpacityAtom =
      Atom(name: 'SplashBase.centerColumnOpacity');

  @override
  double get centerColumnOpacity {
    _$centerColumnOpacityAtom.context
        .enforceReadPolicy(_$centerColumnOpacityAtom);
    _$centerColumnOpacityAtom.reportObserved();
    return super.centerColumnOpacity;
  }

  @override
  set centerColumnOpacity(double value) {
    _$centerColumnOpacityAtom.context.conditionallyRunInAction(() {
      super.centerColumnOpacity = value;
      _$centerColumnOpacityAtom.reportChanged();
    }, _$centerColumnOpacityAtom,
        name: '${_$centerColumnOpacityAtom.name}_set');
  }

  final _$bottomTextPositionAtom = Atom(name: 'SplashBase.bottomTextPosition');

  @override
  double get bottomTextPosition {
    _$bottomTextPositionAtom.context
        .enforceReadPolicy(_$bottomTextPositionAtom);
    _$bottomTextPositionAtom.reportObserved();
    return super.bottomTextPosition;
  }

  @override
  set bottomTextPosition(double value) {
    _$bottomTextPositionAtom.context.conditionallyRunInAction(() {
      super.bottomTextPosition = value;
      _$bottomTextPositionAtom.reportChanged();
    }, _$bottomTextPositionAtom, name: '${_$bottomTextPositionAtom.name}_set');
  }

  final _$initUIAsyncAction = AsyncAction('initUI');

  @override
  Future initUI() {
    return _$initUIAsyncAction.run(() => super.initUI());
  }
}
