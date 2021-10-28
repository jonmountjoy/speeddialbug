import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class WithFloating extends StatelessWidget {
  const WithFloating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Center(
          child: TextButton(
        child:
            const Text("This page has a FloatingActionButton.  You will be able to swipe back."),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )),
    );
  }
}
