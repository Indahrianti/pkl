import 'package:flutter/material.dart';

class RumusLingkaran extends StatelessWidget {
  const RumusLingkaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Rumus Lingkaran"),
      ),
      body: ListView(children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Text(
            "Lingkaran",
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
                      image: AssetImage('assets/images/lingkaran.png'),
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
                      child: Text("Lingkaran juga merupakan kumpulan dari titik titik yang membentuk suatu lengkungan yang memiliki panjang yang sama terhadap satu titik tertentu.",
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
                        " Luas = π x r x r \n\n Keliling = 2 x π x r",
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