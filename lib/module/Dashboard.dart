import 'package:flutter/material.dart';
import './DrawerMenu.dart';
import './Model.dart';
import './Profile.dart';

class Dashboard extends StatefulWidget {
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
                  var isi = Model(TxtJudul.text, TxtDeskripsi.text, TxtData.text);
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Profile(models: isi))
                  );
                },
              ),
            ],
          )
        ),
      );
  }
}
