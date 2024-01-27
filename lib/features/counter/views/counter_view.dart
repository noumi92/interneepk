import 'dart:async';

import 'package:flutter/material.dart';
import 'package:interneepk/features/counter/viewmodels/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  
  @override
  Widget build(BuildContext context) {
    print("main build");
    final counterProvider = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Provider Counter")),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CounterProvider>(builder: (context, value, child){
            return Text(
              value.count.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 31),
            );
          }),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
                onPressed: () {
                  counterProvider.resetCount();
                },
                child: const Text("RESET")),
          )
        ],
      )),
    );
  }

  @override
  void initState() {
    super.initState();
    final counterProvider = Provider.of<CounterProvider>(context, listen: false);
    Timer.periodic(const Duration(seconds: 2), (timer) {
      counterProvider.addCount();
    });
  }
}
