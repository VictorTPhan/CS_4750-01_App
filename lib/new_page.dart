import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/another_page.dart';

class MySecondPage extends StatefulWidget {
  MySecondPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      print("The counter has been increased to " + _counter.toString());
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyThirdPage(title: "Third Page")),
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
              'Screen Number 2',
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