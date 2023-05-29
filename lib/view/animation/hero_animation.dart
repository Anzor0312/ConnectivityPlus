import 'package:flutter/material.dart';

class HeroAnimationPage extends StatelessWidget {
  const HeroAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Her Animation"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ItemHeroPage(),
                ));
          },
          child: Hero(
              tag: "mycontiner",
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: Colors.red),
              )),
        ),
      ),
    );
  }
}

class ItemHeroPage extends StatelessWidget {
  const ItemHeroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item Hero Animation"),
      ),
      body: Center(
        child: Hero(
            tag: "mycontiner",
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                image: const DecorationImage(image:
                 NetworkImage("https://repository-images.githubusercontent.com/205373971/def40d80-cb4c-11e9-971a-7434089990ed"),fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.yellowAccent),
            )),
      ),
    );
  }
}
