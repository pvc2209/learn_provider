import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("rebuild to");

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Consumer<MySetting>(
            builder: (context, settings, child) {
              return Column(
                children: [
                  ListTile(
                    title: Text("Change text"),
                    onTap: () {
                      settings.text = "Drawer";
                    },
                  ),
                  ListTile(
                    title: Text("Change color"),
                    onTap: () {
                      settings.changeColor();
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topRight,
          child: Consumer<MySetting>(builder: (context, settings, child) {
            print("rebuild nho");

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  settings.text,
                  style: TextStyle(color: settings.color),
                ),
                ElevatedButton(
                  onPressed: () {
                    settings.text = "Hello";
                  },
                  child: Text(
                    "Change text",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    settings.changeColor();
                  },
                  child: Text(
                    "Change color",
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
