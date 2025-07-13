import 'package:counter/counter_mvc/model/counter_model.dart';
import 'package:flutter/material.dart';

class CounterController with ChangeNotifier {
  final CounterModel _countermodel = CounterModel();

  int get count => _countermodel.count;

  void increment() {
    _countermodel.increment();
    notifyListeners();
  }

  void decrement() {
    _countermodel.decrement();
    notifyListeners();
  }

  void reset() {
    _countermodel.reset();
    notifyListeners();
  }
}