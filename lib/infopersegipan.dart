import 'package:flutter/material.dart';

class infopersegipanjang extends StatelessWidget {
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
              'images/Persegipanjang.jpg',
              fit: BoxFit.cover,
              height: 250,
              width: 350,
            )),
            Container(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    'Persegi Panjang',
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
                    ' Persegi panjang adalah bangun datar segi empat yang keempat sudutnya siku-siku dan sisi-sisi yang berhadapan sama panjang. Luas persegi panjang dapat dicari dengan mengkalikan Panjang dan lebarnya L = P * L',
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
