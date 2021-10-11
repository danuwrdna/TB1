import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Danu program',
            ),
          ),
          backgroundColor: Colors.red[800],
        ),
        body: Danuprogram(),
      ),
    );
  }
}

class Danuprogram extends StatefulWidget {
  const Danuprogram({Key? key}) : super(key: key);

  @override
  _Danuprogram createState() => _Danuprogram();
}

class _Danuprogram extends State<Danuprogram> {
  // ignore: non_constant_identifier_names
  int Gambar = 1;

  void danu() {
    setState(() {
      Gambar = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(55.0),
              child: GestureDetector(
                child: Image.asset(
                  'images/Gambar $Gambar.jpg',
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 150.00),
                  child: GestureDetector(
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      child: Text(
                        'Klik Dah',
                        style: TextStyle(fontSize: 22.0),
                      ),
                      color: Colors.red[400],
                      textColor: Colors.white,
                      onPressed: () {
                        danu();
                      },
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
