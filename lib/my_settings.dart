import 'dart:math';

import 'package:flutter/material.dart';

class MySetting extends ChangeNotifier {
  String _text = "OK";
  Color color = Colors.blue;

  String get text => _text;

  set text(String value) {
    if (_text == "OK") {
      _text = value;
    } else {
      _text = "OK";
    }

    notifyListeners();
  }

  // Color get color => _color;

  // Ko so sánh được 2 object color vì so sánh == ở đây là so sánh địa chỉ
  // set color(Color value) {
  //   if (_color != Colors.blue) {
  //     _color = value;
  //   } else {
  //     _color = Colors.blue;
  //   }

  //   notifyListeners();
  // }

  void changeColor() {
    int r = Random().nextInt(100);

    if (r % 2 == 0) {
      color = Colors.red;
    } else {
      color = Colors.blue;
    }

    notifyListeners();
  }
}
