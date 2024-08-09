// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app_2/pages/home_page.dart';

void main() async {
  //init the hive
  await Hive.initFlutter();

  //open a box
  var box=await Hive.openBox('myBox');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(primarySwatch: Colors.lime),
      theme: ThemeData(primarySwatch: Colors.lime, useMaterial3: false),
      home: HomePage(),
    );
  }
}
