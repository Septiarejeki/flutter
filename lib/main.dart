import 'package:belajar_flutter/gridview/latihan_grid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// this 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Belajar Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Flutter"),
          backgroundColor: Color.fromARGB(255, 248, 255, 250),
          centerTitle: true,
        ),
        body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child:  latihanGrid(),
        ),
        
      ),
    );
  }
  }

class BelajarHelloWorld extends StatelessWidget {
  const BelajarHelloWorld({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextWidget();
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "kls 12" ,
      style: TextStyle(
        fontSize: 24, 
      fontWeight: FontWeight.bold ,
      color: Colors.green[400],
      ),
      ),
      );
  }
}