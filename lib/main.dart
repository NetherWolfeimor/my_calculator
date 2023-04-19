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
      home: const MyHomePage(title: ''),
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
  int temp = 0;
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";
  String result = "0";
  String numbers = "";
  void calc(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        result = "0";
        num1 = 0.0;
        num2 = 0.0;
        operand = "";
      } else if (buttonText == "+/-") {
          if (result=="0"){
        result = "0";
        result = ("-");
        } else if(double.parse(result) % 1 == 0) {
          result = (int.parse(result) * (-1)).toString();
        } else if (double.parse(result) % 1 != 0){
          result = (double.parse(result) * (-1)).toString();
        }
      } else if (buttonText == "+/-" && (double.parse(result) % 1 == 1)) {
            result = (double.parse(result) * (-1)).toString();
      } else if (buttonText == "+" || buttonText == "-" || buttonText == "×" || buttonText == "÷") {
        num1 = double.parse(result);
        operand = buttonText;
        result = "0";
      } else if (buttonText == ",") {
        if (!result.contains(",")) {
          result += ".";
          numbers += buttonText;
        }
      } else if (buttonText == "=") {
        num2 = double.parse(result);
        if (operand == "+") {
          if ((num1 + num2) % 1 == 0) {
            temp = (num1 + num2).toInt();
            result = temp.toString();
          }
          else {
            result = (num1 + num2).toString();
          }
        }
        if (operand == "-") {
          if ((num1 - num2) % 1 == 0) {
            temp = (num1 - num2).toInt();
            result = temp.toString();
          }
          else {
            result = (num1 - num2).toString();
          }
        }

        if (operand == "×") {
          if ((num1 * num2) % 1 == 0) {
            temp = (num1 * num2).toInt();
            result = temp.toString();
          }
          else {
            result = (num1 * num2).toString();
          }
        }
        if (operand == "÷") {
          if (num2 == 0) {
            result = "inf";
          }
          else {
            if ((num1 / num2) % 1 == 0) {
              temp = (num1 ~/ num2);
              result = temp.toString();
            }
            else {
              result = (num1 / num2).toStringAsFixed(8);
            }
          }
        }
        num1 = 0.0;
        num2 = 0.0;
        operand = "";
      } else {
        if (result == "0") {
          result = buttonText;
        } else {
          result += buttonText;
        }
      }
    });
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
        child: Column (
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 330,
                height: 100,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(result, style: const TextStyle(fontSize: 60, color: Colors.white)),
                  ],
                ),
              ),
            const SizedBox(height: 10),
        Column(
        mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        OutlinedButton(
                            style:OutlinedButton.styleFrom(
                                backgroundColor: Colors.grey,
                            ),
                        onPressed: () => calc('C'), child: const Text('C',
                        style: TextStyle(fontSize: 35, color: Colors.black))),
                        OutlinedButton(
                                style:OutlinedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                ),
                            onPressed: () => calc('+/-'), child: const Text('+/-',
                            style: TextStyle(fontSize: 45, color: Colors.black))),
                        OutlinedButton(
                            style:OutlinedButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                            onPressed: () => calc(','), child: const Text(',',
                            style: TextStyle(fontSize: 45, color: Colors.black))),
                        OutlinedButton(
                            style:OutlinedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () => calc('÷'), child: const Text('÷',
                            style: TextStyle(fontSize: 45, color: Colors.white))),
                        ]
                  ),
              const SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        OutlinedButton(
                            onPressed: () => calc('7'), child: const Text('7',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: () => calc('8'), child: const Text('8',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: () => calc('9'), child: const Text('9',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            style:OutlinedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () => calc('×'), child: const Text('×',
                            style: TextStyle(fontSize: 50, color: Colors.white))),
                      ]
                  ),
              const SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        OutlinedButton(
                            onPressed: () => calc('4'), child: const Text('4',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: () => calc('5'), child: const Text('5',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: () => calc('6'), child: const Text('6',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            style:OutlinedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () => calc('-'), child: const Text('-',
                            style: TextStyle(fontSize: 45, color: Colors.white))),
                      ]
                  ),
              const SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        OutlinedButton(
                            onPressed: () => calc('1'), child: const Text('1',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: () => calc('2'), child: const Text('2',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            onPressed: () => calc('3'), child: const Text('3',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () => calc('+'), child: const Text('+',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                      ]
                  ),
              const SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.grey[850],
                              minimumSize: const Size(290,90),
                              maximumSize: const Size(290,90),
                              side: const BorderSide(width: 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(360)
                              )
                          ),
                            onPressed: () => calc('0'), child: const Text('0',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
                        OutlinedButton(
                            style:OutlinedButton.styleFrom(
                              backgroundColor: Colors.orange,
                            ),
                            onPressed: () => calc('='), child: const Text('=',
                            style: TextStyle(fontSize: 35, color: Colors.white))),
             ]
        ),
        ]
      ),
        ]
      ),
      )
    );
  }
}
