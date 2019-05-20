import 'package:flutter/material.dart';
import './DrawerMenu.dart';
import './Model.dart';

class Profile extends StatefulWidget{
  final Model models;
  Profile({Key key, @required this.models}) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState(data: models);
}

class _ProfileState extends State<Profile>{
  final Model data;
  _ProfileState({Key key, @required this.data});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerMenu(),
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Container(
          child: Text(data.judul),
        ),
      );
  }
}