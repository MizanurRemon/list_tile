// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var title = "ListTile";
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: (() {
                  show_toast("menu");
                }),
                icon: const Icon(Icons.menu)),
            title: Text(title),
          ),
          body: const MyHomePage(),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
void show_toast(var type) {
  Fluttertoast.showToast(
    msg: type,
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //var screenHeight = MediaQuery.of(context).size.height;
    //var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: ListView(children: [
            ListTile(
              title: const Text("Demo 1"),
              subtitle: const Text("Message"),
              leading: const CircleAvatar(
                child: Icon(Icons.message),
              ),
              trailing: IconButton(
                  onPressed: () {
                    show_toast("1");
                  },
                  icon: const Icon(Icons.camera)),
            ),
            ListTile(
              title: const Text("Demo 2"),
              subtitle: const Text("Message"),
              leading: const CircleAvatar(
                child: Icon(Icons.message),
              ),
              trailing: IconButton(
                  onPressed: () {
                    show_toast("2");
                  },
                  icon: const Icon(Icons.camera)),
            ),
            ListTile(
              title: const Text("Demo 3"),
              subtitle: const Text("Message"),
              leading: const CircleAvatar(
                child: Icon(Icons.message),
              ),
              trailing: IconButton(
                  onPressed: () {
                    show_toast("3");
                  },
                  icon: const Icon(Icons.camera)),
            )
          ]),
        ),
      ),
    );
  }
}
