import 'package:mobx/mobx.dart';

import 'package:mobx/mobx.dart';
part 'contador.store.g.dart';

class ContadorStore = _ContadorStoreBase with _$ContadorStore;

abstract class _ContadorStoreBase with Store {
  @observable
  int count = 0;

  @action 
  void increment() {
    count++;
  }
  
}
