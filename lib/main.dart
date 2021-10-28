import 'package:flutter/material.dart';
import 'package:speeddialback/with.dart';
import 'package:speeddialback/withfloating.dart';
import 'package:speeddialback/without.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          })),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text("Navigate to page without SpeedDial"),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (context) => Without()),
              ),
            ),
            ElevatedButton(
              child: const Text("Navigate to page with SpeedDial"),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (context) => With()),
              ),
            ),
            ElevatedButton(
              child: const Text("Navigate to page with FloatingActionButton"),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (context) => WithFloating()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
