import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  int _counter = 0;

  int get counter {
    return _counter;
  }

  void add() {
    _counter++;
    print(_counter);
    notifyListeners();
  }
}
