import 'package:flutter/material.dart';

class ClickLightThemeMode {
  static ThemeData theme = ThemeData(
    drawerTheme:const DrawerThemeData(
      backgroundColor: Colors.white
    ) ,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      titleTextStyle: TextStyle(color: Colors.white),
      iconTheme: IconThemeData(color: Colors.white)
    )
  );
}
