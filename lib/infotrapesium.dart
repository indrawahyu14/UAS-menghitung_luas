import 'package:flutter/material.dart';

class infotrapesium extends StatelessWidget {
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
              'images/trapesium.png',
              fit: BoxFit.cover,
              height: 200,
              width: 350,
            )),
            Container(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    'Trapesium',
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
                    'Trapesium adalah bangun datar dua dimensi yang tersusun oleh 4 buah sisi yaitu 2 buah sisi sejajar yang tidak sama panjang dan 2 buah sisi lainnya. Bangun datar trapesium termasuk jenis bangun datar segi empat atau quadrilateral, karena mempunyai 4 buah sisi. Luas trapesim dapat dicari dengan menggunakan rumus L = 1/2 * jumlah panjang sisi sejajar * tinggi',
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
