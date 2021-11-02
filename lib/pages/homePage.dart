// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Shubham'),
        
      ),
      body: Center(
        child: Container(
          child:Text('Welcome',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),)
        ),
      ),
      drawer:Drawer(),
    );
  }
}