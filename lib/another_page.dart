import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/main.dart';

class MyThirdPage extends StatefulWidget {
  MyThirdPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyThirdPageState createState() => _MyThirdPageState();
}

class _MyThirdPageState extends State<MyThirdPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print("The counter has been increased to " + _counter.toString());
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage(title: "Home Page")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Screen Number 3',
            ),
            Text(
              'You have pushed the button this many times!!!',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}