import 'package:modular_stacked_tutorial/core/locator.dart';
import 'package:modular_stacked_tutorial/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends ReactiveViewModel {
  final CounterService counterService = locator<CounterService>();

  @override
  List<ListenableServiceMixin> get listenableServices => [
    counterService,
  ];

  int get counter => counterService.counterValue;

  void incrementCounter() => counterService.incrementCounter();

  void decrementCounter() => counterService.decrementCounter();
}

/*class HomeViewModel extends BaseViewModel {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
    // OR
    // rebuildUi();
  }
}*/
