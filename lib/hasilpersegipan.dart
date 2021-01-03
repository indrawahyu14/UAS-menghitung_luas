import 'package:flutter/material.dart';
import 'dart:math';

class hasilpersegipanjang extends StatelessWidget {
  hasilpersegipanjang(
      {@required this.panjang_persegipanjang,
      @required this.lebar_persegipanjang});
  final int panjang_persegipanjang;
  final int lebar_persegipanjang;
  int thasil;
  String cHasil;
  int hasil;

  @override
  Widget build(BuildContext context) {
    double hasil = (panjang_persegipanjang * lebar_persegipanjang * 1.0);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('HASIL'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              'Luas Persegi panjang Adalah :',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              ' $hasil ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
