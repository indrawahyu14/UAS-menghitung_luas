import 'package:flutter/material.dart';
import 'hasilpersegi.dart';
import 'infopersegi.dart';

class persegi extends StatefulWidget {
  @override
  _persegiState createState() => new _persegiState();
}

class _persegiState extends State<persegi> {
  int sisi = 0;

  var _nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('PERSEGI'),
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
                        MaterialPageRoute(builder: (context) => infopersegi()));
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
                                sisi = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 5,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                                labelText: "sisi persegi",
                                suffix: Text('cm'),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0.0)),
                                //filled: true,
                                hintText: 'sisi'),
                          ),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 40.0)),
                    Container(
                      child: RaisedButton(
                        onPressed: () {
                          var route = MaterialPageRoute(
                            builder: (BuildContext) => hasilpersegi(
                              sisi_persegi: sisi,
                            ),
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
