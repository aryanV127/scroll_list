import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? controller;
  @override
  void initState() {
    // TODO: implement initState

    controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          controller: controller,
          children: [
            MyContainer(color: Colors.green),
            MyContainer(color: Colors.red),
            MyContainer(color: Colors.indigo),
            MyContainer(color: Colors.yellow),
          ],
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              double pos = 600.0;
              controller!.position.jumpTo(pos);
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              double pos = 1200.0;
              controller!.position.jumpTo(pos);
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              double pos = 1800.0;
              controller!.position.jumpTo(pos);
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      color: color,
    );
  }
}
