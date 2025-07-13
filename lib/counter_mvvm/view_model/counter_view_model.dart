import 'package:counter/counter_mvvm/model/counter_mvvm_model.dart';
import 'package:flutter/material.dart';

class CounterViewModel with ChangeNotifier {
  final CounterMVVMModel _counterModel = CounterMVVMModel();

  int get count => _counterModel.count;

  void increment() {
    _counterModel.count++;
    notifyListeners();
  }

  void decrement() {
    _counterModel.count--;
    notifyListeners();
  }

  void reset() {
    _counterModel.count = 0;
    notifyListeners();
  }
}