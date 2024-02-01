import 'package:belajar_flutter/screens/detail_fauna_screens.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListFaunaScreen extends StatelessWidget {
  final List<Map<String, dynamic>> faunaData = [
    {
      "nama": "Harimau Sumatra",
      "asal": "Sulawesi Utara",
      "image": "assets/img/p.webp",
      "decs": "Hewan endemik dengan tubuh terkecil dan warna kulit tergelap di antara jenis harimau lainnya ini, juga memiliki corak loreng hitam yang lebih rapat dan bila dilihat secara seksama motifnya menyerupai sidik jari manusia."
    },
    {
      "nama": " Badak Sumatera",
      "asal": "Sumatra.",
      "image": "assets/img/bd.jpg",
      "decs": "Populasi badak sumatra yang tersebar di Taman Nasional Bukit Barisan, Taman Nasional Gunung Leuser, dan Taman Nasional Way Kambas kian terancam punah. Dengan jumlah kurang dari 80 ekor, penghuni hutan tropis yang hidup secara soliter ini hanya melahirkan satu anak setiap 3 atau 4 tahun sekali.."
    },
    {
      "nama": "Kukang Jawa",
      "asal": "Jawa Tengah dan jawa Barat",
      "image": "assets/img/kukang.jpg",
      "decs": "Kukang jawa adalah jenis kukang yang endemik di pulau Jawa. Kukang memiliki ciri khas berbulu cokelat keabu-abuan dengan ekor panjang. Kukang jawa dapat ditemukan di hutan-hutan dataran rendah dan pegunungan Jawa Barat, Jawa Tengah dan DI Yogyakarta. Populasinya diperkirakan terancam punah karena berkurangnya habitat akibat perburuan liar dan konversi lahan pertanian."
    },
    {
      "nama": "Komodo (Varanus komodoensis)",
      "asal": "pulau Sumatra",
      "image": "assets/img/komodo.jpg",
      "decs": "Menurut penelitian, komodo merupakan salah satu hewan purba yang sudah hidup sejak 4 juta tahun yang lalu, lho! Namun fauna asli Indonesia ini termasuk hewan buas yang berbisa dan cukup berbahaya. . "
    },
    {
      "nama": "Orang Hutan",
      "asal": "pulau Kalimantan dan Sumatra",
      "image": "assets/img/orang.webp",
      "decs": "Orang utan merupakan satwa endemik Indonesia yang terancam punah. Sebagai satwa liar yang dilindungi, orang utan mendapat perhatian serius pemerintah dalam upaya konservasinya. Orang utan dikenal sebagai primata besar yang hanya hidup di alam pulau Kalimantan dan Sumatra."
    }
  ];

   @override
   Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/background.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: ListView.builder(
          itemCount: faunaData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                     builder: (context) => DetailfaunaScreen(
                       nama: faunaData[index]["nama"],
                       asal: faunaData[index]["asal"],
                       image: faunaData[index]["image"],
                       decs: faunaData[index]["decs"],
                     ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10), 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${faunaData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  "${faunaData[index]["nama"]} - ${faunaData[index]["asal"]}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
   }
}