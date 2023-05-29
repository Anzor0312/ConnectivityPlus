import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/", (route) => false);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("InfoPage"),
      ),
    );
  }
}
