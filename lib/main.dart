import 'package:counter/counter_mvc/controller/counter_controller.dart';
import 'package:counter/counter_mvc/view/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     /* home: ChangeNotifierProvider(
          create: (context) => CounterViewModel(),
          child: const CounterMVVMView()), */

      home: ChangeNotifierProvider(
          create: (context) => CounterController(),
          child: const CounterView()),
    );
  }
}

