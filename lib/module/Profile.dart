import 'package:flutter/material.dart';
import './DrawerMenu.dart';
import './Model.dart';

class Profile extends StatefulWidget{
  final Model models;
  Profile({Key key, @required this.models}) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState(models.judul);  
}

class _ProfileState extends State<Profile>{
  final String judul;

  _ProfileState(this.judul);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerMenu(),
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Container(
          child: Text(this.judul),
        ),
      );
  }
}