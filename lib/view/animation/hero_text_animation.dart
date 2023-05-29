import 'package:flutter/material.dart';

class HeroTextAnimationPage extends StatelessWidget {
  const HeroTextAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Her Animation"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemHeroTextPage(itemHeroTag: index.toString(),text: "Hello $index",),
                    ));
              },
              title: Hero(
                tag: index.toString(),
                child: Text("Hello $index"),
              ),
            );
          },
          itemCount: 50,
        ));
  }
}

class ItemHeroTextPage extends StatelessWidget {
 final String itemHeroTag;
 final String text;
  const ItemHeroTextPage({super.key,required this.itemHeroTag,required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item Hero Animation"),
      ),
      body: Center(
        child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://repository-images.githubusercontent.com/205373971/def40d80-cb4c-11e9-971a-7434089990ed"),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.yellowAccent),
                  child: Hero(tag:itemHeroTag ,child: Text(text,style: const TextStyle(fontSize: 60,color: Colors.yellowAccent),)),
            )),
      
    );
  }
}
