import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final Tween<double> _sizeTween = Tween(begin: 50, end: 600);
  AnimationController? _controller;
  Animation<double>? _sizeAnimation;
  bool cliced = false;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
        animationBehavior: AnimationBehavior.normal);
    _sizeAnimation = _sizeTween.animate(_controller!);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation App"),
      ),
      body: Center(
        child: AnimatedBuilder(
            animation: _controller!,
            builder: (BuildContext context, Widget? widget) {
              return Container(
                height: _sizeAnimation!.value,
                width: _sizeAnimation!.value,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://www.sissify.com/wp-content/uploads/2017/06/Hypno-Spiral-m4v-image.jpg"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amberAccent),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         
          if (!cliced) {
            _controller!.forward();
          } else {
            _controller!.reverse();
          } cliced = !cliced;
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
