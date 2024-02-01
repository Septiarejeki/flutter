import 'package:flutter/material.dart';

class OutputBooking extends StatelessWidget {
  final String nama, jk, tglLahir, agama;
  OutputBooking(
    {Key? key,
    required this.nama,
    required this.jk,
    required this.tglLahir,
    required this.agama})
    : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          children: [
            Text("nama : $nama"),
            Text("Jenis Kelamin : $jk"),
            Text("tanggal lahir : $tglLahir"),
            Text("Agama : $agama"),
          ],
        ),
      );
    }
}