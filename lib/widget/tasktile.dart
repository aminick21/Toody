// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  String text;
  bool isChecked;
  Function checkBoxCallBack;
  TaskTile({required this.text,required this.isChecked,required this.checkBoxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      trailing: Checkbox(
        activeColor: Theme.of(context).primaryColor,
        value:isChecked,
        onChanged:(value){
          checkBoxCallBack(value);
          },
    ),
    );
  }
}
