import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  //deklarasi variabel
  final txtkodekue = TextEditingController();
  final txtnamakue = TextEditingController();
  final txtharga = TextEditingController();
  List<Widget> data = [];

  onTambah() {
    setState(() {
      data.add(ListTile(
        leading: Icon(Icons.circle),
        title: Text(txtkodekue.text),
        subtitle: Text(txtnamakue.text),
        trailing: Text(txtharga.text),
        
      ));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
          backgroundColor : Colors.redAccent,
            appBar: new AppBar(title: Text("SNACKKU")),
            body: new ListView(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextField(
                        controller: txtkodekue,
                        decoration: InputDecoration(hintText: 'Kode Kue'),
                      ),
                      TextField(
                        controller: txtnamakue,
                        decoration: InputDecoration(hintText: 'Nama Kue'),
                      ),
                      TextField(
                        controller: txtharga,
                        decoration: InputDecoration(hintText: 'Harga'),
                      ),
                      RaisedButton(child: Text("Tambah"), onPressed: onTambah),
                    ],
                  ),
                ),
                new Column(
                  // Isi List View
                  children: data,
                )
              ],
            )));
  }
}
