import 'package:flutter/material.dart';

class latihanGrid extends StatelessWidget {
  const latihanGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromRGBO(200, 205, 219, 1), Color.fromARGB(198, 86, 164, 228)]),
      ),
      child: SingleChildScrollView(
      child: Column(
        children: [
     Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 205,
            decoration: BoxDecoration(
             color: Color.fromARGB(255, 214, 209, 209),
               borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              children: [  
               Image.asset("assets/img/2.jpeg"),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(16),
            width: 350,
            height: 120,
            decoration: BoxDecoration(
            
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              children: [
            //      Padding(
            //       padding: EdgeInsets.all(8.0),
            //       child: Center(
            //   child: Text("ChalkZone", style: TextStyle(fontSize: 24.0),),
            // ),
            //     ),
                  // Image.asset("assets/img/2.jpeg"),

                   Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
              child: Text("ChalkZone adalah sebuah serial animasi dari Amerika Serikat yang diproduksi oleh Frederator Studios untuk Nickelodeon. Serial kartun atau animasi ini sangat mirip dengan sebuah kartun dari tahun 1974 yang berjudul Simon in the Land of Chalk Drawings", style: TextStyle(fontSize: 20.0),),
            ),
                ),
              ],
            ),
          ),


          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 110,
            decoration: BoxDecoration(
             color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
               Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 120,
                  child:  Row(
                    children: [
                         Image.asset("assets/img/Rudy.webp", fit: BoxFit.cover),
                    ],
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 110,
                  child:  Row(
                    children: [
                         Image.asset("assets/img/Penny.webp", fit: BoxFit.cover),
                    ],
                  ),
                ),
                
                Container(
                  margin: EdgeInsets.all(10),
                  height: 50,
                  width: 160,
                  child:  Row(
                    children: [
                         Image.network("https://w7.pngwing.com/pngs/31/376/png-transparent-animated-cartoon-drawing-chalk-others-miscellaneous-comics-canvas.png"),
                    ],
                  ),
                ), 
              ],
            ),
          ),

         Text(
          "Galeri",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
         ),
         Container(
            width: 350,
            height: 350,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
              itemCount: 12,
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  height: 200,
                  color: Color.fromARGB(255, 226, 231, 231),
                  margin: EdgeInsets.all(8),
                  child:  Image.network("https://i1.sndcdn.com/artworks-gv7umLpr9DK1wT23-VN0efA-t500x500.jpg") ,
                );
              },
            ),
          ),
              ],
            ),
      )
          );
    
    }
}