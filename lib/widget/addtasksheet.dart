// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toody/model/taskdata.dart';

class AddTaskSheet extends StatelessWidget {
  const AddTaskSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        children: [
          Text("Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30,
              color:Theme.of(context).primaryColor,
            ),),
          TextField(
            autofocus: true,
            onSubmitted: (value){
              Provider.of<TaskData>(context,listen: false).addTask(value);
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
