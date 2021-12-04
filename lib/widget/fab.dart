// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toody/widget/addtasksheet.dart';
class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(onPressed:(){
        showModalBottomSheet(
            isScrollControlled: true,
            context: context, builder:(context){
          return SingleChildScrollView(
            child: Container(
              padding:EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
              child: AddTaskSheet(),
            ),
          );

        });
      },
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        child: Icon(Icons.add),
      ),

    );
  }
}
