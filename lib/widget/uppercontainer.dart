// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toody/model/taskdata.dart';

class UpperContainer extends StatefulWidget {
  const UpperContainer({Key? key}) : super(key: key);
  @override
  _UpperContainerState createState() => _UpperContainerState();
}
class _UpperContainerState extends State<UpperContainer> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        color:Color(0xFFf9cb48),
        height: MediaQuery.of(context).size.height/4,
        child:  Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(text: TextSpan(
                children: [
                  TextSpan(text:"Hello Nikhil\n",
                      style: TextStyle(
                          fontSize: 24,
                          color:Colors.black,
                          fontWeight: FontWeight.w800 )
                  ),
                  TextSpan(
                      text: "Today you have ${Provider.of<TaskData>(context).tasks.length} tasks.",
                      style: TextStyle(color: Colors.black))
                ],),),
              Image(
                  image: AssetImage("assets/boy.jpg")),
            ],
          ),
        ),

      ),
    );
  }
}
class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }


}