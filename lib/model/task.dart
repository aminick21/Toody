class Task{
  String taskName;
  bool status;
  Task(this.taskName,{this.status=false});

  toggle(){
    status=!status;
  }

}