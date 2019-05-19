import 'package:flutter/material.dart';
import './DrawerMenu.dart';

class Profile extends StatefulWidget{
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerMenu(),
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Container(
          child: Text('Halaman Profile'),
        ),
      );
  }
}