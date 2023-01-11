import "package:flutter/material.dart";
import 'package:provider/provider.dart';

class AddClass extends ChangeNotifier {
  int _i = 0;
  int get i => _i;
  void incre() {
    _i++;
    notifyListeners();
  }
}
