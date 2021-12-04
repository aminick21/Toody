// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toody/model/taskdata.dart';
import 'package:toody/screens/firstscreen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(), // ← create/init your state model
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor:Color(0xFF8b6af7) ),
          home: FirstScreen()
      ),
    );
  }
}
