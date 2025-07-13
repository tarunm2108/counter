import 'package:counter/counter_mvc/model/counter_model.dart';
import 'package:flutter/material.dart';

class CounterController with ChangeNotifier {
  final CounterModel _model = CounterModel();

  int get count => _model.count;

  void increment() {
    _model.increment();
    notifyListeners();
  }

  void decrement() {
    _model.decrement();
    notifyListeners();
  }

  void reset() {
    _model.reset();
    notifyListeners();
  }
}