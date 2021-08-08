import 'package:mobx/mobx.dart';
part 'pomodo.store.g.dart';

class Pomodoro = _PomodoroBase with _$Pomodoro;

abstract class _PomodoroBase with Store {
  @observable
  int timeWork = 2;

  @observable
  int timeRest = 1;

  @action
  void incrementTimeWork() {
    timeWork ++;
  }
   @action
  void decrementTimeWork() {
    timeWork --;

  } @action
  void incrementTimeRest() {
    timeRest++;
  }
  @action
  void decrementTimeRest() {
    timeRest--;
  }
  
}