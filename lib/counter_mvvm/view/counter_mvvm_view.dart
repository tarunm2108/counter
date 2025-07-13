import 'package:counter/counter_mvvm/view_model/counter_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterMVVMView extends StatelessWidget {
  const CounterMVVMView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MVVM Counter App'),
      ),
      body: Center(
        child: Text(
          'Count: ${context.watch<CounterViewModel>().count}',
          style: const TextStyle(fontSize: 32),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "increment",
            onPressed: context.read<CounterViewModel>().increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "decrement",
            onPressed: context.read<CounterViewModel>().decrement,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: "reset",
            onPressed: context.read<CounterViewModel>().reset,
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
