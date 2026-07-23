import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  //variable
  int _count = 0;

  //getter to access count var..
  int get count => _count;

  //functions
  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
