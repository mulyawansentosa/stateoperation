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
              Navigator.of(context).pushNamed('/');
              Navigator.pop(context);
            });
          },
        ),
        ListTile(
          leading: FlutterLogo(size: 20),
          title: Text('Login'),
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed('/login');
              Navigator.pop(context);
            });
          },
        ),
        ListTile(
          leading: FlutterLogo(size: 20),
          title: Text('Profile'),
          onTap: () {
            setState(() {
              Navigator.of(context).pushNamed('/profile');
              Navigator.pop(context);
            });
          },
        ),
      ],
    ));
  }
}
