import 'package:flutter/cupertino.dart';

import 'task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks=[
    Task("complete this app"),
  ];

  addTask(String task){
    tasks.add(Task(task));
    notifyListeners();
  }
  updateTask(Task task){
    task.toggle();
    notifyListeners();
  }
  deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}