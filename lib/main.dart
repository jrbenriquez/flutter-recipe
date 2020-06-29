import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:receipeapp/Screens/addrecipe.dart';
import 'package:receipeapp/Screens/detailscreen.dart';
import 'package:receipeapp/Screens/mainscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App Title Test',
      theme: ThemeData(),
      initialRoute: MainScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        DetailScreen.id: (context) => DetailScreen(),
        AddRecipe.id: (context) => AddRecipe(),
      },
    );
  }
}
