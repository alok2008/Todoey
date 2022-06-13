import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Bread'),
    Task(name: 'Buy Food'),
  ];
  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle){
     final task=Task(name: newTaskTitle);
     _tasks.add(task);
     notifyListeners();
  }
  void updateTask(Task task){
    task.toggle();
    notifyListeners();
  }
  void deletedata(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}