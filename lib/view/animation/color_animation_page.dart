import 'dart:math';

import 'package:flutter/material.dart';

class ColorAnimationPage extends StatefulWidget {
  const ColorAnimationPage({super.key});

  @override
  State<ColorAnimationPage> createState() => _ColorAnimationPageState();
}

class _ColorAnimationPageState extends State<ColorAnimationPage> {
  double _width = 50;
  double _heigth = 50;
  Color _colors = Colors.black;
   Random _randomPicindex = Random();
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);
  final List<String> _img = [
    "https://i.pinimg.com/originals/89/23/43/8923438324f88129e44565fb8596d285.jpg",
    "https://webmg.ru/wp-content/uploads/2022/10/i-91-31.jpeg",
    "https://i.pinimg.com/originals/2c/dc/28/2cdc284c157a28d3afda01911a3be6ca.jpg",
    "https://static.bimago.pl/mediacache/catalog/product/cache/5/8/59785/image/750x1120/86e5311ada95a6c27ece35e3457fa2f2/59785_1.jpg",
    "https://images.pexels.com/photos/9454915/pexels-photo-9454915.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Animation"),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _heigth,
          duration: const Duration(seconds: 3),
          curve: Curves.fastOutSlowIn,
          decoration:
              BoxDecoration(
                image: DecorationImage(image:
                 NetworkImage(_img[_randomPicindex.nextInt(_img.length)]),fit:BoxFit.fill ),color: _colors, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final random = Random();
            _width = random.nextInt(600).toDouble();
            _heigth = random.nextInt(600).toDouble();
            _colors = Color.fromARGB(random.nextInt(256), random.nextInt(256),
                random.nextInt(256), random.nextInt(256));
            _borderRadius =
                BorderRadius.circular(random.nextInt(50).toDouble());
          });
        },
        child: const Icon(Icons.play_arrow_outlined),
      ),
    );
  }
}
