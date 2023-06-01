import 'package:stacked/stacked.dart';

class CounterService with ListenableServiceMixin {
  int _counter = 0;

  int get counterValue => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }
}


/*
class CounterService with ListenableServiceMixin {
  CounterService() {
    listenToReactiveValues(<dynamic>[_counter]);
  }

  final ReactiveValue<int> _counter = ReactiveValue(0);

  int get counterValue => _counter.value;

  void incrementCounter() => _counter.value++;

  void decrementCounter() => _counter.value--;
}*/
