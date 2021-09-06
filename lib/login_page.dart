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
          Expanded(
            flex: 40,
            child: Image(
              image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fimg1.wikia.nocookie.net%2F__cb20140805211145%2Fbionicle%2Fimages%2Ff%2Ff6%2FTahu_keyv.jpg&f=1&nofb=1'),
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 50,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text('login',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text('Forgot Password?',
                  style: TextStyle(
                      color:Colors.red)
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 30, bottom: 30),
                    width: 200,
                    child: ElevatedButton(
                      child: Text("Login"),
                      onPressed: (){

                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text('App Logo')
                ),
                IconButton(
                  icon: const Icon(Icons.book), onPressed: () {  },
                ),
                IconButton(
                  icon: const Icon(Icons.computer), onPressed: () {  },
                ),
              ],
            )
          )
        ]
      )
    );
  }
}
