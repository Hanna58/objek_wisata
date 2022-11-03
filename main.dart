import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Pantai Menganti';
  final String location = 'Kebumen, Jawa Tengah';
  final String description =
      '''Pantai Menganti merupakan sebuah pantai yang berlokasi di Desa Karangduwur, Kecamatan Ayah, Kabupaten Kebumen, Jawa Tengah. Pantai ini merupakan salah satu pantai terindah di Jawa Tengah. Pasir pantainya yang berwarna putih serta terdapat panorama perbukitan juga tebing karst yang indah. Bentang alam berupa perbukitan memang sedikit menyulitkan untuk mengakses pantai ini. Sebelum mencapai pantai melalui jalan yang berlika-liku, meski demikian pemandangan tetap menakjubkan. Pegunungan karst yang indah berbukit kerucut, dan laut yang sesekali terlihat saat di atas jalan yang merayapi bukit.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'images/menganti.jpeg',
            height: 250,
            width: 412,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15,
          ),
          Row(
            children: [
              Container(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    this.location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              Container(
                width: 100,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18,
              ),
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
