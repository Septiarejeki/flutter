import 'package:flutter/material.dart';
import 'package:belajar_flutter/register.dart';
import 'package:belajar_flutter/register.dart';

class OutputRegister extends StatelessWidget {
  final String nama, email, password ;
  OutputRegister(
      {Key? key,
      required this.nama,
      required this.email,
      required this.password,
    })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("nama : $nama"),
          Text("email : $email"),
          Text("Password : $password"),
         
        ],
      ),
    );
  }
}