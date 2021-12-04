import 'package:flutter/material.dart';
import 'package:toody/model/taskdata.dart';
import 'package:toody/widget/tasktile.dart';
import 'package:provider/provider.dart';

class LowerContainer extends StatefulWidget {
  const LowerContainer({Key? key}) : super(key: key);

  @override
  _LowerContainerState createState() => _LowerContainerState();
}

class _LowerContainerState extends State<LowerContainer> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskDataObject,child){

      return Expanded(
          child: ListView.builder(itemBuilder: (context,index){
            final task =taskDataObject.tasks[index];
            return TaskTile(text:task.taskName,
              isChecked:task.status,
            checkBoxCallBack: (checkboxState){
              taskDataObject.updateTask(task);
            },);
          },
            itemCount:taskDataObject.tasks.length ,),
        );
      },
    );
  }
}
