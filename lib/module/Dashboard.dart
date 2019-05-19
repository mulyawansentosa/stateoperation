import 'package:flutter/material.dart';
import './DrawerMenu.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerMenu(),
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Container(
          child: Text('Halaman Dashboard'),
        ),
      );
  }
}
