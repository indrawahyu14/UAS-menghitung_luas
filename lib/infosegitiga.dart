import 'package:flutter/material.dart';

class infosegitiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
                child: Image.asset(
              'images/segitiga.jpg',
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            )),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                children: <Widget>[
                  Text(
                    'Segitiga',
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
                    ' Segitiga adalah bangun datar yang dibatasi oleh tiga buah sisi dan mempunyai tiga buah titik sudut. Untuk dapat mencari luas dari segitiga sama sisi dapat menggunkan rumus L = 1/2 * Alas * Tinggi',
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
