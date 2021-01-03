import 'package:flutter/material.dart';

class infolayang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 20),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                child: Image.asset(
              'images/layang.jpg',
              fit: BoxFit.cover,
              height: 350,
              width: 300,
            )),
            Container(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    'Layang - Layang',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "serif",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Column(
                children: <Widget>[
                  Text(
                    'Layang-layang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang rusuk yang masing-masing pasangannya sama panjang dan saling membentuk sudut. Luas layang-layang dapat dicari dengan rumus L = 1/2 * diagonal 1 * diagonal 2',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "serif",
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
