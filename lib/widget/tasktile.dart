// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  String text;
  bool isChecked;
  void Function(bool?) checkBoxCallBack;
  void Function() closeCallBack;
  TaskTile({required this.text,required this.isChecked,required this.checkBoxCallBack,required this.closeCallBack, });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text),
      leading: Checkbox(
        activeColor: Theme.of(context).primaryColor,
        value:isChecked,
        onChanged: checkBoxCallBack,
    ),
      trailing:IconButton(
        icon:Icon(Icons.close),
        onPressed: closeCallBack,
      ),
    );
  }
}
