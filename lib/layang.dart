import 'package:flutter/material.dart';
import 'package:uts_mobile/hasillayang.dart';
import 'hasillayang.dart';
import 'infolayang.dart';

class layang extends StatefulWidget {
  @override
  _layangState createState() => new _layangState();
}

class _layangState extends State<layang> {
  int diagonal1 = 0;
  int diagonal2 = 0;

  var _nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('LAYANG-LAYANG'),
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
                        MaterialPageRoute(builder: (context) => infolayang()));
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
                                diagonal1 = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 5,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                                labelText: "diagonal 1",
                                suffix: Text('cm'),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0.0)),
                                //filled: true,
                                hintText: 'diagonal 1'),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                diagonal2 = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            maxLength: 5,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                                labelText: "diagonal 2",
                                suffix: Text('cm'),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                //filled: true,
                                hintText: 'diagonal 2'),
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
                            builder: (BuildContext) => hasillayang(
                              diagonal1: diagonal1,
                              diagonal2: diagonal2,
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
