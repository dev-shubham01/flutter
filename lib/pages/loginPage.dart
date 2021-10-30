import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Column(children: [
          Image.asset('assets/images/login.png',
          fit:BoxFit.cover),
          TextFormField(
            decoration:InputDecoration(
              
              hintText: "Username",
              labelText: "Enter Username"
            )
          )
        ],)
      )
    );
  }
}