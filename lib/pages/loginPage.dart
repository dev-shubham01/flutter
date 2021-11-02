// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:shubham_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  String name = "";
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Form(
        autovalidate: true,
        key: _formkey,
        child: Column(
          children: [
            Image.asset('assets/images/login.png', fit: BoxFit.cover),
            SizedBox(
              height: 10,
            ),
            Text("WELCOME $name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username cannot be empty";
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)))),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 6) {
                      return "Password length should be atleast 6";
                    }

                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)))),
            ),
            InkWell(
              onTap: () async {
                if (_formkey.currentState!.validate()) {
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  await Navigator.pushNamed(context, MyRoutes.homeRoute);
                  setState(() {
                    changeButton = false;
                  });
                }
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeButton ? 50 : 150,
                height: 50,
                alignment: Alignment.center,
                child: changeButton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                ),
              ),
            ),
          ],
        ),
      )),
    ));
  }
}
