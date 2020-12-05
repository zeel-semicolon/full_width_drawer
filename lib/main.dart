import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FullWidthDrawer(),
    );
  }
}

class FullWidthDrawer extends StatefulWidget {
  @override
  _FullWidthDrawerState createState() => _FullWidthDrawerState();
}

class _FullWidthDrawerState extends State<FullWidthDrawer> {
  static final List<String> _listViewData = [
    "Inducesmile.com",
    "Flutter Dev",
    "Android Dev",
    "iOS Dev!",
    "React Native Dev!",
    "React Dev!",
    "express Dev!",
    "Laravel Dev!",
    "Angular Dev!",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("FULL WIDTH APP BAR"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "BODY",
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      drawer: SizedBox(
        width: size.width,
        child: Drawer(
          child: Container(
            color: Colors.amber,
            child: ListView(
              padding: EdgeInsets.all(10.0),
              children: _listViewData
                  .map((data) => ListTile(
                        title: Text(data),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
