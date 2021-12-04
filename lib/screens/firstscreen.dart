// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:toody/screens/secondscreen.dart';
class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image:AssetImage("assets/pic.jpg")),
          SizedBox(
            height: 50,
          ),
          Text("Get Your Life Organised",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30,

            ),),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60),
            child: Text("Toody is a simple and effective to-do list and task manager app which helps you manage time. ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,

              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>SecondScreen(),),);
          },
            child: Text("Get Started",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF8b6af7),),
              minimumSize: MaterialStateProperty.all<Size>(Size(300,60),),
            ),
          ),
        ],
      ),),

    );
  }
}
