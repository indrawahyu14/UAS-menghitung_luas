import 'package:flutter/material.dart';

class infopersegi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PERSEGI'),
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
              'images/persegi.jpg',
              fit: BoxFit.cover,
              height: 200,
              width: 200,
            )),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                children: <Widget>[
                  Text(
                    'Persegi',
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
                    'Persegi adalah suatu segi empat dengan semua sisinya sama panjang dan semua sudut-sudutnya sama besar dan siku-siku (90o). Suatu persegi mempunyai ukuran panjang = lebar atau p = l = s, maka rumus luas persegi Adalah L= S * S',
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
