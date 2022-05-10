import 'package:flutter/material.dart';
import 'package:lnf_app/login.dart';
import 'package:lnf_app/start.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Start(),
    );
  }
}
