import 'package:flutter/material.dart';
import 'package:uts_mobile/layang.dart';
import 'toturial.dart';
import 'segitiga.dart';
import 'persegi.dart';
import 'persegipanjang.dart';
import 'trapesium.dart';
import 'layang.dart';

class pilih extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('HITUNG LUAS'),
        centerTitle: true,
        actions: <Widget>[
          Container(
            width: 75,
            height: 75,
            child: Center(
              child: IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => toturial()));
                },
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 30, right: 29),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => persegi()),
                  );
                },
                padding:
                    EdgeInsets.only(left: 110, right: 110, top: 10, bottom: 10),
                color: Colors.blueGrey,
                child: Text(
                  'PERSEGI',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => persegipanjang()),
                  );
                },
                padding:
                    EdgeInsets.only(left: 31, right: 30, top: 10, bottom: 10),
                color: Colors.blueGrey,
                child: Text(
                  'PERSEGI PANJANG',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => segitiga()),
                  );
                },
                padding:
                    EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                color: Colors.blueGrey,
                child: Text(
                  'SEGITIGA',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => trapesium()),
                  );
                },
                padding:
                    EdgeInsets.only(left: 83, right: 83, top: 10, bottom: 10),
                color: Colors.blueGrey,
                child: Text(
                  'TRAPESIUM',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => layang()),
                  );
                },
                padding:
                    EdgeInsets.only(left: 45, right: 45, top: 10, bottom: 10),
                color: Colors.blueGrey,
                child: Text(
                  'LAYANG-LAYANG',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
