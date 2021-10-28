import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class With extends StatelessWidget {
  const With({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        icon: Icons.send,
        children: [
          SpeedDialChild(
            child: Icon(Icons.camera_enhance),
            onTap: () {},
          ),
        ],
      ),
      body: Center(
          child: TextButton(
        child: const Text(
            "This page has a SpeedDial.  Swiping back is now broken.  Click here to return."),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )),
    );
  }
}
