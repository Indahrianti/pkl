import 'package:flutter/material.dart';
import 'persegi.dart';
import 'pPanjang.dart';
import 'lingkaran.dart';
import 'trapesium.dart';
import 'segitiga.dart';

void main() {
  runApp(MaterialApp(
    title: "navigation",
    home: Halaman1(),
  ));
}

class Halaman1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Rumus Bangun Datar"),
        ),
        body: ListView(children: <Widget>[
          // Container(
          //   width: 100,
          //   height: 150,
          //   margin: EdgeInsets.all(5),
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage('assets/images/persegi.png'),
          //           fit: BoxFit.cover),
          //       borderRadius: BorderRadius.circular(10)),
          // ),
          Container(
            padding: EdgeInsets.all(15),
            child: RaisedButton(
                child: Text("Persegi"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Persegi(),
                      ));
                }),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: RaisedButton(
                child: Text("Persegi Panjang"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PersegiPanjang(),
                      ));
                }),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: RaisedButton(
                child: Text("Lingkaran"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RumusLingkaran(),
                      ));
                }),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: RaisedButton(
                child: Text("Segitiga"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RumusSegitiga(),
                      ));
                }),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: RaisedButton(
                child: Text("Trapesium"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RumusTrapesium(),
                      ));
                }),
          ),
        ]));
  }
}

class Halaman2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 2"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("kembali"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}