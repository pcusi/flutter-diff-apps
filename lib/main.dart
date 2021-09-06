import 'package:flutter/material.dart';
import 'package:practice_app/components/option_component.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: OptionPracticeWidget(),
      ),
    );
  }
}

