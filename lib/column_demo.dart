import 'package:flutter/material.dart';

class ColumnDemoPage extends StatefulWidget {
  const ColumnDemoPage({Key? key}) : super(key: key);

  @override
  _ColumnDemoPageState createState() => _ColumnDemoPageState();
}

class _ColumnDemoPageState extends State<ColumnDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Demo')
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 12,
              child: Text("Title 1"),
            ),
            Expanded(
              flex: 25,
              child: Text("Title 2"),
            ),
            Expanded(
              flex: 12,
              child: Text("Title 3"),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      child: Text('Login'),
                      onPressed: (){

                      }),
                ),
                ElevatedButton(
                    child: Text('Sign Out'),
                    onPressed: (){

                    }),
              ]
            )
          ],
        ),
      ),
    );
  }
}
