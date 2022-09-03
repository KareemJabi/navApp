import 'dart:html';
import 'login.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_guide/login.dart';
import 'package:travel_guide/signup.dart';
import 'signup.dart';

void main() {
  runApp(travel_guide());
}

class travel_guide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

String userName = "";
String password = "";

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "Travel Guide",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              "Sign in ",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
                onChanged: (text) {
                  userName = text;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "User Name")),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              onChanged: (text) {
                password = text;
              },
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Password"),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Forget password"),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                if (userName == "" || password == "") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Alert!!"),
                        content: new Text("enter your name or password"),
                        actions: <Widget>[
                          new ElevatedButton(
                            child: new Text("OK"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }else{

                     Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return login();
                      }),
                    );
                  
                }

                ;
              },
              child: Text("Login"),
            ),
          ),
          Row(
            children: [
              Text(
                "Does not have an account?",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return signup();
                      }),
                    );
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 20),
                  ))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
