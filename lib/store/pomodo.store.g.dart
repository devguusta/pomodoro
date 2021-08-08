// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodo.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Pomodoro on _PomodoroBase, Store {
  final _$timeWorkAtom = Atom(name: '_PomodoroBase.timeWork');

  @override
  int get timeWork {
    _$timeWorkAtom.reportRead();
    return super.timeWork;
  }

  @override
  set timeWork(int value) {
    _$timeWorkAtom.reportWrite(value, super.timeWork, () {
      super.timeWork = value;
    });
  }

  final _$timeRestAtom = Atom(name: '_PomodoroBase.timeRest');

  @override
  int get timeRest {
    _$timeRestAtom.reportRead();
    return super.timeRest;
  }

  @override
  set timeRest(int value) {
    _$timeRestAtom.reportWrite(value, super.timeRest, () {
      super.timeRest = value;
    });
  }

  final _$_PomodoroBaseActionController =
      ActionController(name: '_PomodoroBase');

  @override
  void incrementTimeWork() {
    final _$actionInfo = _$_PomodoroBaseActionController.startAction(
        name: '_PomodoroBase.incrementTimeWork');
    try {
      return super.incrementTimeWork();
    } finally {
      _$_PomodoroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeWork() {
    final _$actionInfo = _$_PomodoroBaseActionController.startAction(
        name: '_PomodoroBase.decrementTimeWork');
    try {
      return super.decrementTimeWork();
    } finally {
      _$_PomodoroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeRest() {
    final _$actionInfo = _$_PomodoroBaseActionController.startAction(
        name: '_PomodoroBase.incrementTimeRest');
    try {
      return super.incrementTimeRest();
    } finally {
      _$_PomodoroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeRest() {
    final _$actionInfo = _$_PomodoroBaseActionController.startAction(
        name: '_PomodoroBase.decrementTimeRest');
    try {
      return super.decrementTimeRest();
    } finally {
      _$_PomodoroBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
timeWork: ${timeWork},
timeRest: ${timeRest}
    ''';
  }
}
