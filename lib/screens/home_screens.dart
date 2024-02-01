import 'package:belajar_flutter/gridview/latihan_grid.dart';
import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman Home"),
            TextButton(
              child: Text("About"),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => latihanGrid(),
                  ),
                );
              },
              child: Container(
                color: Colors.red,
                width: 80,
                height: 20,
                child: Text("Latihan List"),
              ),
            )
          ],
        ),
      ),
    );
  }
}