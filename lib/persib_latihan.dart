import 'package:flutter/material.dart';

class latihanPersib extends StatelessWidget {
  const latihanPersib({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromARGB(255, 142, 168, 255), const Color.fromARGB(255, 0, 30, 82)]),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 185, 190, 255),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              children: [
                Image.asset("assets/img/persib3.webp"),
                Image.asset("assets/img/2.jpg"),
                Image.asset("assets/img/3.jpg"),
                Image.asset("assets/img/4.webp"),
                Image.asset("assets/img/persib3.webp"),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 167, 187, 224),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset("assets/img/p1.png"),
                Container(
                  margin: EdgeInsets.all(10),
                ),
                Image.asset("assets/img/p3.png"),
                Container(
                  margin: EdgeInsets.all(10),
                ),
                Image.asset("assets/img/p4.png"),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  color: Colors.grey,
                ),
                 Image.asset("assets/img/p2.png"),
                Container(
                  margin: EdgeInsets.all(10),
                 
                )
              ],
            ),
          ),
          
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 166, 211, 236),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
            Image.asset("assets/img/p1.png"),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  color: Colors.grey, 
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 100,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}