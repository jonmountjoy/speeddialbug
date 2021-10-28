import 'package:flutter/material.dart';

class Without extends StatelessWidget {
  const Without({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
              "This page has no SpeedDial.  You will be able to swipe back to the previous screen.")),
    );
  }
}
