import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counterNumber = 0;
  String keyWords = "Click";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counterNumber',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text(keyWords, style: const TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counterNumber++;
            keyWords = counterNumber == 1 ? "Click" : "Clicks";
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
