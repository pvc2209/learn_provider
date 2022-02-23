import 'package:bai3_1_provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter MultiProvider"), actions: [
        Switch(
          value: context.watch<MySettings>().isDark,
          onChanged: (value) {
            context.read<MySettings>().setBrightness(value);
          },
        ),
      ]),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.watch<CounterProvider>().counter.toString(),
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().decrement();
                },
                child: const Text("Decrement"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().increment();
                },
                child: const Text("Increment"),
              ),
            ],
          )
        ],
      )),
    );
  }
}
