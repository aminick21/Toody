// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toody/model/taskdata.dart';
import 'package:toody/widget/fab.dart';
import 'package:toody/widget/lowercontainer.dart';
import 'package:toody/widget/uppercontainer.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton:MyFloatingActionButton() ,
        body: Column(
          children: [
            UpperContainer(),
            LowerContainer(),
          ],
        ),

      ),
    );
  }
}
