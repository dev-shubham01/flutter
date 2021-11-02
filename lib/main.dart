// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import 'package:shubham_1/pages/homePage.dart';

import 'package:shubham_1/pages/loginPage.dart';
import 'package:shubham_1/utils/routes.dart';

void main()
{
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
    debugShowCheckedModeBanner:false,
      initialRoute: "/",
      routes: {
        "/":(context)=>LoginPage(),
        MyRoutes.homeRoute:(context)=>HomePage(),
        MyRoutes.loginRoute:(context)=>LoginPage(),

      },
    );
  }
}
