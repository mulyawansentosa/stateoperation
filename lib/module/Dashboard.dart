import 'package:flutter/material.dart';
import 'package:route/module/Model.dart' as prefix0;
import './DrawerMenu.dart';
import './Model.dart';

class Dashboard extends StatefulWidget {
  final Model models;
  Dashboard({Key key, @required this.models}) : super(key: key);
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final TxtJudul      = TextEditingController();
  final TxtDeskripsi  = TextEditingController();
  final TxtData       = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerMenu(),
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TextField(
                controller: TxtJudul,
              ),
              TextField(
                controller: TxtDeskripsi,
              ),
              TextField(
                controller: TxtData,
              ),
              RaisedButton(
                child: Text('Kirim Data'),
                onPressed: (){
                  Model(TxtJudul.text, TxtDeskripsi.text, TxtData.text);
                  Navigator.of(context).pushNamed('/profile');
                },
              ),
            ],
          )
        ),
      );
  }
}
