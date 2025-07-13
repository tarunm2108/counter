import 'package:counter/counter_mvc/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: const Text('MVC Counter App'),
            ),
            body: Center(
              child: Text(
                'Count: ${context.watch<CounterController>().count}',
                style: const TextStyle(fontSize: 32),
              ),
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: "increment",
                  onPressed: context.read<CounterController>().increment,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 10),
                FloatingActionButton(
                  heroTag: "decrement",
                  onPressed: context.read<CounterController>().decrement,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(height: 10),
                FloatingActionButton(
                  heroTag: "reset",
                  onPressed: context.read<CounterController>().reset,
                  child: const Icon(Icons.refresh),
                ),
              ],
            ),
          );
  }
}