import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SliderPage(),
  ));
}

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  final List<String> img = [
    'https://i.imgur.com/5MQqqGZ.jpg',
    'https://pbs.twimg.com/media/GLtyclxXcAAwyi2.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHKTyn4-xn3hh0oyONnNSPt7mP27ju3K2hSg&s',
  ];

  final List<String> titles = [
    'CLASSICUS FABULARIS',
    'Vaquero',
    'Conejo de dibujos animados',
  ];

  final List<String> subtitles = [
    'Concilio de los dioses.',
    'el personaje que es un vaquero del Salvaje Oeste',
    ' personaje de ficción de un libro para niños ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personajes Random"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: PageView.builder(
          itemCount: img.length,
          itemBuilder: (BuildContext context, int index) {
            return buildSliderItem(img[index], titles[index], subtitles[index]);
          },
        ),
      ),
    );
  }

  Widget buildSliderItem(String imageUrl, String title, String subtitle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          imageUrl,
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(
          subtitle,
          style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 255, 3, 3)),
        ),
      ],
    );
  }
}
