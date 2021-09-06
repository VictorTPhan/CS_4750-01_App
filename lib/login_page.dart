import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fimg1.wikia.nocookie.net%2F__cb20140805211145%2Fbionicle%2Fimages%2Ff%2Ff6%2FTahu_keyv.jpg&f=1&nofb=1')
          ),
          Column(
            children: [

            ],
          ),
          Row(
            children: [

            ],
          )
        ]
      )
    );
  }
}
