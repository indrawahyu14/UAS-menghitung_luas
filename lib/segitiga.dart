import 'package:flutter/material.dart';
import 'hasilsegi.dart';
import 'infosegitiga.dart';

class segitiga extends StatefulWidget {
  @override
  _segitigaState createState() => new _segitigaState();
}

class _segitigaState extends State<segitiga> {
  int alas = 0;
  int tinggi = 0;

  var _nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('SEGITIGA'),
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
                            builder: (context) => infosegitiga()));
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
                                alas = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 5,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                                labelText: "Alas Segitiga",
                                suffix: Text('cm'),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0.0)),
                                //filled: true,
                                hintText: 'Alas'),
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
                                labelText: "Tinggi Segitiga",
                                suffix: Text('cm'),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0.0)),
                                //filled: true,
                                hintText: 'Tinggi'),
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
                            builder: (BuildContext) => hasilsegitiga(
                                alas_segitiga: alas, tinggi_segitiga: tinggi),
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
