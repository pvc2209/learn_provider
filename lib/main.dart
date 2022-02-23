// 3.1: https://youtu.be/qZew0-rKyXg
// 3.2: https://youtu.be/GMM9USN3l_A

// 3.3: https://youtu.be/jTmh4mh2rrY
// The Consumer widget has two main purposes:
// + It allows obtaining a value from a provider when we don't have a BuildContext that is a descendant of said provider, and therefore cannot use Provider.of.
// => Khi expose object bằng ChangeNotifierProvider mà ở widget cần dùng nó lại ở cùng cấp
// với ChangeNotifierProvider thì context lúc đó chưa biết về object được expose
// nên Consumer như là 1 builder widget để context biết được object mà thôi
// + It helps with performance optimisation by providing more granular rebuilds
// => Widget nào cần rebuild thì bọc lại trong Consumer thôi (bình thường dùng kiểu gọi Provider.of ở trong build do đó
// cả cây widget trong hàm build đó sẽ bị rebuild lại)
// => Với việc dùng context.watch() thì cái hàm gần nhất build chứa cái context đó sẽ bị rebuild lại
// => Làm giảm hiệu năng => Dùng Consumer để tối ưu

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_settings.dart';
import 'home_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: ((context) => MySetting()),
    child: const MaterialApp(
      home: HomePage(),
    ),
  ));
}
