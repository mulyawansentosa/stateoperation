import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Mulyawan Sentosa'),
          accountEmail: Text('mulyawan@flazhost.com'),
        ),
        ListTile(
          leading: FlutterLogo(size: 20),
          title: Text('Dashboard'),
          onTap: () {
            setState(() {
              Navigator.pop(context);
              Navigator.of(context).pushNamed('/');
            });
          },
        ),
        ListTile(
          leading: FlutterLogo(size: 20),
          title: Text('Login'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed('/login');
          },
        ),
        ListTile(
          leading: FlutterLogo(size: 20),
          title: Text('Profile'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).pushNamed('/profile');
          },
        ),
      ],
    ));
  }
}
