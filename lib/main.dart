// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toody/screens/firstscreen.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
       theme: ThemeData(
       primaryColor:Color(0xFF8b6af7) ),
       home: FirstScreen(),
  )
  );
}
