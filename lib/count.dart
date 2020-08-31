import 'package:mobx/mobx.dart';

class Counter {
  
  Counter() {
    increment = Action(_increment);
  }

  Observable _count = Observable(0);
  Action increment;

  int get count => _count.value;

  void _increment() {
    _count.value++;
  }
}
