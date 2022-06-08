import 'package:flutter/material.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO:CREATE THEME
    // TODO:APPLY HOME WIDGET

    return MaterialApp(
      // TODO:ADD THEME
      debugShowCheckedModeBanner: false,
      title: 'Fooderlich',
      // 4
      home: Scaffold(
        appBar: AppBar(
          // TODO:Style the title
          title: const Text('Fooderlich'),
          leading: Icon(Icons.home),
        ),
        // TODO:Style the body text
        body: const Center(
          child: Text("Let's get cooking"),
        ),
      ),
    );
  }
}
