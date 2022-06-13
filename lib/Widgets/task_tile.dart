import 'package:flutter/material.dart';
import '../model/task.dart';

class TaskTile extends StatelessWidget {
  List<Task> tasks = [];
  bool isChecked = false;
  final String taskTitle;
  final  Function checkboxCallback;
  final Function() longPressCallback;

  TaskTile({ required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      leading: Text(taskTitle, style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough: null),),
      trailing: Checkbox(value: isChecked,
        activeColor: Colors.lightBlueAccent,
         onChanged:(newValue){
        checkboxCallback(newValue);

         },
      )
    );
  }
}