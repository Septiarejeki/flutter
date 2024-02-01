// import 'package:belajar_flutter/gridview/navigasi.dart';
import 'package:belajar_flutter/gridview/grid_basic.dart';
import 'package:belajar_flutter/gridview/latihan_grid.dart';
import 'package:belajar_flutter/latihan_row.dart';
import 'package:belajar_flutter/persib_latihan.dart';
import 'package:belajar_flutter/rowcolumn.dart';
import 'package:belajar_flutter/screens/about_screens.dart';
import 'package:belajar_flutter/screens/fauna_screens.dart';
import 'package:belajar_flutter/screens/home_screens.dart';
import 'package:belajar_flutter/screens/output_formulir.dart';
import 'package:belajar_flutter/form_screen.dart';
import 'package:belajar_flutter/screens/detail_fauna_screens.dart';
import 'package:flutter/material.dart';
// import 'navigasi.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Named Routes',
//     initialRoute: '/',
//     routes: {
//       '/': (context) => const firstRoute(),
//       '/second': (context) => const secondRoute(),
//     },
//   ));
// }

// // ignore: camel_case_types
// class firstRoute extends StatelessWidget {
//   const firstRoute({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Nextgen Halaman 1'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const 
//           Text('Pergi ke halaman 2'),
//           onPressed: () {
//             Navigator.pushNamed(context, '/second');
//           },
//         ),
//       ),
//     );
//   }
// }

// // ignore: camel_case_types
// class secondRoute extends StatelessWidget {
//   const secondRoute({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Nextgen Halaman 2"),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Kembali!'),
//         ),
//       ),
//     );
//   }
// }

// class treeRoute extends StatelessWidget {
//   const treeRoute({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Nextgen Halaman 1'),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Pergi ke halaman 2'),
//           onPressed: () {
//             Navigator.pushNamed(context, '/second');
//           },
//         ),
//       ),
//     );
//   }
// }


// class TextWidget extends StatelessWidget {
//   const TextWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         "kls 12" ,
//       style: TextStyle(
//         fontSize: 24, 
//       fontWeight: FontWeight.bold ,
//       color: Colors.green[400],
//       ),
//       ),
//       );
//   }
// }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ini Project Flutter Pertamaku",
      initialRoute: '/',
      routes: {
        '/': (context) => BottomNavigationMenu(),
        '/about': (context) => AboutScreen(),
        '/latihan': (context) => HomeScreen(),
        '/form': (context) =>   ListFaunaScreen()
      },
    );
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
        "Hello Dunia...\nHallo Candra.. ",
        style: TextStyle(
            color: Colors.pink, fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({super.key});

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  @override
  int _selectedTab = 0;

  List _pages = [
    HomeScreen(),
    AboutScreen(),
    LatihanForm (),
    ListFaunaScreen(),
   
  
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3_outlined), label: "Form"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "container"),
        ],
      ),
    );
  }
}