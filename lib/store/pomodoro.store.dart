import 'dart:async';

import 'package:mobx/mobx.dart';
part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStoreBase with _$PomodoroStore;

enum TypeInterval {WORK, REST}

abstract class _PomodoroStoreBase with Store {
  @observable
  bool initialize = false;
  @observable
  int minutes = 2;
  @observable
  int seconds = 0;
  
  @observable
  int timeWork = 2;

  @observable
  int timeRest = 1;
  @observable
  TypeInterval typeInterval = TypeInterval.WORK;

  @action
  void incrementTimeWork() {
    timeWork ++;
    if(isWorking()){
      restarted();
    }
  }
   @action
  void decrementTimeWork() {
    timeWork --;
    if(isWorking()){
      restarted();
    }

  } @action
  void incrementTimeRest() {
    timeRest++;
    if(isResting()){
      restarted();
    }
  }

  @action
  void decrementTimeRest() {
    timeRest--;
    if(isResting()){
      restarted();
    }
  }

  Timer? timer;

  @action 
  void start(){
    initialize = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if(minutes == 00 && seconds == 0) {
        _changeTypeInterval();
      } else if(seconds == 0) {
        seconds = 59;
        minutes--;
      } else {
        seconds--;
      }
    });
  }
  @action
  void stop(){
    initialize = false;
    timer?.cancel();
  }
  @action
  void restarted() {
    initialize = false;
    stop();
    minutes = isWorking() ? timeWork : timeRest;
    seconds = 0;
  }

  bool isWorking() {
    return typeInterval == TypeInterval.WORK;
  }
  bool isResting() {
    return typeInterval == TypeInterval.REST;
  }

  void _changeTypeInterval() {
    if(isWorking()) {
      typeInterval = TypeInterval.REST;
      minutes = timeRest;
    } else {
      typeInterval = TypeInterval.WORK;
      minutes = timeWork;
    }
    seconds = 0;
  }
  
  
}