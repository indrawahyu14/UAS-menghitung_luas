import 'package:flutter/material.dart';
import 'pilih.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 100),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            ClipRRect(
                child: Image.asset(
              'images/HL.png',
              fit: BoxFit.cover,
              height: 410,
              width: 410,
            )),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pilih()),
                  );
                },
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                color: Colors.blueGrey,
                child: Text(
                  'Start',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
