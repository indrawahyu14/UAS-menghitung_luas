import 'package:flutter/material.dart';
import 'hasilpersegipan.dart';
import 'infopersegipan.dart';

class persegipanjang extends StatefulWidget {
  @override
  _persegipanjangState createState() => new _persegipanjangState();
}

class _persegipanjangState extends State<persegipanjang> {
  int panjang = 0;
  int lebar = 0;

  var _nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('PERSEGI PANJANG'),
          centerTitle: true,
          actions: <Widget>[
            Container(
              width: 75,
              height: 75,
              child: Center(
                child: IconButton(
                  icon: const Icon(Icons.info),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => infopersegipanjang()));
                  },
                ),
              ),
            ),
          ],
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 20.0)),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                panjang = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 5,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                                labelText: "panjang persegi",
                                suffix: Text('cm'),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0.0)),
                                //filled: true,
                                hintText: 'panjang'),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                lebar = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 5,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                                labelText: "lebar persegi",
                                suffix: Text('cm'),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                //filled: true,
                                hintText: 'lebar'),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 40)),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      child: RaisedButton(
                        onPressed: () {
                          var route = MaterialPageRoute(
                            builder: (BuildContext) => hasilpersegipanjang(
                                panjang_persegipanjang: panjang,
                                lebar_persegipanjang: lebar),
                          );
                          Navigator.of(context).push(route);
                        },
                        padding: EdgeInsets.all(10),
                        color: Colors.blueGrey,
                        textColor: Colors.white,
                        child: Text(
                          'Hitung Luas',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
