import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruoter/provider/theme/theme_provider.dart';
import 'package:ruoter/view/theme_mode_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, child) => Drawer(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            "https://avatars.mds.yandex.net/i?id=d2aaa3788b897d816d58d5f0a9326379-5112030-images-thumbs&n=13"))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.sunny),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.cloud_circle_outlined),
                      onPressed: () {
                        context.read<ThemeProvider>().themeChanged(context);
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.downloading_outlined),
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThemeModePage(),
                      ));
                },
                child: const Text("Themes")),
          ],
        ),
      ),
    );
  }
}
