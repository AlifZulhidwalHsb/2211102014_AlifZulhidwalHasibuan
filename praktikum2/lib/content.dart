import 'package:flutter/material.dart';

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Style untuk teks deskripsi
    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    // Widget daftar ikon dan teks
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    // Title Text
    final titleText = Container(
      padding: const EdgeInsets.all(10),
      child: const Text(
        'Strawberry Pavlova',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    // Subtitle Text
    final subTitle = Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: const Text(
        'A delicious strawberry pavlova recipe with fresh ingredients. '
        'Enjoy a tasty dessert for your special moments!',
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );

    // Widget ratings
    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.green[500]),
              const Icon(Icons.star, color: Colors.black),
              const Icon(Icons.star, color: Colors.black),
            ],
          ),
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    // Menggabungkan semua elemen ke dalam leftColumn
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleText,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

    // Gambar utama
    final mainImage = Expanded(
      child: Image.asset(
        'assets/pavlova.jpeg', // Ganti dengan gambar yang ada di folder assets
        fit: BoxFit.cover,
      ),
    );

    // Struktur UI
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
        height: 600,
        child: Card(
          elevation: 4, // Memberikan efek bayangan
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 440, // Batasi ukuran leftColumn
                child: leftColumn,
              ),
              mainImage, // Menampilkan gambar
            ],
          ),
        ),
      ),
    );
  }
}
