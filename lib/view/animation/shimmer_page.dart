import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

class ShimmerPage extends StatefulWidget {
  const ShimmerPage({super.key});

  @override
  State<ShimmerPage> createState() => _ShimmerPageState();
}

class _ShimmerPageState extends State<ShimmerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Shimmer")),
        body: FutureBuilder(
          future: Future.value(""),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return Shimmer.fromColors(
                    direction: ShimmerDirection.ltr,
                      baseColor: Colors.grey,
                      highlightColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 50,
                          color: Colors.red,
                        ),
                      ));
                },
                itemCount: 100,
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("hello $index"),
                  );
                },
                itemCount: 10,
              );
            }
          },
        ));
  }
}
