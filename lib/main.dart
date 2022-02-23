// 3.1: https://youtu.be/qZew0-rKyXg
// 3.2: https://youtu.be/GMM9USN3l_A
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';
import 'home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: ((context) => CounterProvider(0)),
    child: const MaterialApp(
      home: HomePage(),
    ),
  ));
}
