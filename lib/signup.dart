import 'package:flutter/material.dart';
String userName= "";
String password="";
String email="";
String age="";
class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: TextFormField(
              onChanged: (value) =>userName=value ,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your username',
                
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: TextFormField(
              onChanged: (value) =>password=value ,
              obscureText: true,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your password',
                
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: TextFormField(
              onChanged: (value) =>email=value ,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your email',
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: TextFormField(
              onChanged: (value) =>age=value ,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your age',
              ),
            ),
          ),
          ElevatedButton(onPressed: (){

            print(userName);
            print(password);
            print(age);
            print(email);
          }, child: Text("submit"))
        ],
      ),
    );
  }
}

// class signup extends StatefulWidget {
  

//   @override
//   State<signup> createState() => _signupState();
// }

// class _signupState extends State<signup> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
