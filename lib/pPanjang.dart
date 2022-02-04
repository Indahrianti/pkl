import 'package:flutter/material.dart';

class PersegiPanjang extends StatelessWidget {
  const PersegiPanjang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Rumus Persegi"),
      ),
      body: ListView(children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Text(
            "Persegi panjang",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 170,
              height: 110,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/persegiPanjang.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
                padding: EdgeInsets.all(10),
                width: 400,
                height: 100,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(          
                    borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      child: Text("persegi panjang adalah sebuah bentuk dengan 4 sisi, dimana sisi-sisinya menghadap dengan panjang yang sama dan memiliki empat simpul. Selain sisi-sisi berlawanan yang memiliki panjang yang sama, ia juga memiliki empat buah sudut yang berukuran sama yaitu 90 °.",                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          )),
                    ),
          ),
          Container(
                padding: EdgeInsets.all(10),
                width: 150,
                height: 70,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(          
                  gradient:
                        LinearGradient(colors: [Colors.grey, Colors.cyan]),
                    borderRadius: BorderRadius.circular(5)),
                    child: Container(
                      child: Text(
                        " Luas = P x L \n\n Keliling = 2 x (P + L)",
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