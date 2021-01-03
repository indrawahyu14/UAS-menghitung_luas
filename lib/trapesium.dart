import 'package:flutter/material.dart';
import 'package:uts_mobile/hasiltrapesium.dart';
import 'hasiltrapesium.dart';
import 'infotrapesium.dart';

class trapesium extends StatefulWidget {
  @override
  _trapesiumState createState() => new _trapesiumState();
}

class _trapesiumState extends State<trapesium> {
  int panjang_sisi1 = 0;
  int panjang_sisi2 = 0;
  int tinggi = 0;

  var _nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('TRAPESIUM'),
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
                            builder: (context) => infotrapesium()));
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
                                panjang_sisi1 = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 5,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                                labelText: "panjang sisi 1",
                                suffix: Text('cm'),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0.0)),
                                //filled: true,
                                hintText: 'panjang sisi 1'),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                panjang_sisi2 = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 5,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                                labelText: "panjang sisi 2",
                                suffix: Text('cm'),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                //filled: true,
                                hintText: 'panjang sisi 2'),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                tinggi = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 5,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                                labelText: "tinggi",
                                suffix: Text('cm'),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                //filled: true,
                                hintText: 'tinggi'),
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
                            builder: (BuildContext) => hasiltrapesium(
                              panjang_sisi1: panjang_sisi1,
                              panjang_sisi2: panjang_sisi2,
                              tinggi: tinggi,
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
