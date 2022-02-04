import 'package:flutter/material.dart';

class RumusSegitiga extends StatelessWidget {
  const RumusSegitiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Rumus Segitiga"),
      ),
      body: ListView(children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Text(
            "Segitiga",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 170,
              height: 170,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/segitiga.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
                padding: EdgeInsets.all(10),
                width: 400,
                height: 90,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(          
                    borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      child: Text("segitiga adalah poligon dengan tiga ujung dan tiga simpul. Ini adalah salah satu bentuk dasar dalam geometri. Segitiga dengan simpul A, B, dan C dilambangkan .",
                      textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                    ),
          ),
          Container(
                padding: EdgeInsets.all(5),
                width: 150,
                height: 70,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(          
                  gradient:
                        LinearGradient(colors: [Colors.grey, Colors.cyan]),
                    borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      child: Text(
                        " Luas = 1/2 x A x T \n\n Keliling = A + B + C",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                    ),
          ),
          ],    
        ),
        Container(
          child: RaisedButton(
              child: Text("kembali"),
              onPressed: () {
                Navigator.pop(context);
              }),
        )
      ]),
    ));
  }
}