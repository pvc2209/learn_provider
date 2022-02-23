import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int _counter;

  CounterProvider(this._counter);

  int get counter => _counter;

  void increment() {
    _counter += 1;
    notifyListeners();
  }

  void decrement() {
    _counter -= 1;
    notifyListeners();
  }
}
