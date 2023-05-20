import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final numberOfAddedDividers = 10;

  final myDivider = Container(
    height: 100,
    color: Colors.yellow,
    child: const Divider(
      color: Colors.pink,
      thickness: 10,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextButton(
        child: const Text(
          'title label',
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {},
      )),
      body: ListView.builder(
        addSemanticIndexes: false,
        semanticChildCount: 1,
        itemCount: numberOfAddedDividers,
        itemBuilder: (BuildContext context, int index) {
          if (index == 4) {
            return IndexedSemantics(
              index: 4,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'hello',
                    semanticsLabel: 'Here we go!',
                  )),
            );
          } else {
            return myDivider;
          }
        },
      ),
    );
  }
}
