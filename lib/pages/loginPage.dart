// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset('assets/images/login.png', fit: BoxFit.cover),
          SizedBox(
            height: 10,
          ),
          Text("WELCOME",
          style:TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Username",
                   
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)))),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)))),
          ),
         Container(
              margin: EdgeInsets.all(10),
              height: 50.0,
              width: 120,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
                onPressed: () {},
                padding: EdgeInsets.all(10.0),
                color: Color.fromRGBO(0, 160, 227, 1),
                textColor: Colors.white,
                child: Text("Login",
                    style: TextStyle(fontSize: 15)),
              ),
            ),
        ],
      )),
    ));
  }
}
