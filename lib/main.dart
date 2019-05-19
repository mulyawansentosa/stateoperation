import 'package:flutter/material.dart';
import 'module/Dashboard.dart';
import 'module/Login.dart';
import 'module/Profile.dart';

void main () => runApp(RouteApp());

class RouteApp extends StatefulWidget{
  @override
  _RouteAppState createState() => _RouteAppState();
}

class _RouteAppState extends State<RouteApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
        '/login': (context) => Login(),
        '/profile': (context) => Profile()
      },
    );
  }
}