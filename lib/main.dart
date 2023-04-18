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
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.grey[850],
              minimumSize: const Size(90,90),
              maximumSize: const Size(90,90),
              side: const BorderSide(width: 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(360)
              )
            )
          )
      ),
      home: const MyHomePage(title: 'Calculator'),
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
  void nothing() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
        Column(
        mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Hello",
                      style: const TextStyle(fontSize: 35, color: Colors.white)),
                  Text("     ",
                      style: const TextStyle(fontSize: 35)),
            ],
              ),
            ],
        ),
        Column(
        mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OutlinedButton(
                        onPressed: nothing, child: const Text('C',
                        style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: nothing, child: const Text('+',
                            style: TextStyle(fontSize: 45, color: Colors.white))),
                        OutlinedButton(
                            onPressed: nothing, child: const Text('-',
                            style: TextStyle(fontSize: 45, color: Colors.white))),
                        OutlinedButton(
                            onPressed: nothing, child: const Text('÷',
                            style: TextStyle(fontSize: 45, color: Colors.white))),
                        ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OutlinedButton(
                            onPressed: nothing, child: const Text('7',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: nothing, child: const Text('8',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: nothing, child: const Text('9',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: nothing, child: const Text('×',
                            style: TextStyle(fontSize: 50, color: Colors.white))),
                      ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OutlinedButton(
                            onPressed: nothing, child: const Text('4',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: nothing, child: const Text('5',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: nothing, child: const Text('6',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: nothing, child: const Text('=',
                            style: TextStyle(fontSize: 45, color: Colors.white))),
                      ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        OutlinedButton(
                            onPressed: nothing, child: const Text('1',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: nothing, child: const Text('2',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: nothing, child: const Text('3',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: nothing, child: const Text('0',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                      ]
                  ),
          ]
        ),
        ]
      ),
      ),
    );
  }
}
