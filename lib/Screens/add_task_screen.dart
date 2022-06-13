import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
    String newtask='';
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF757575),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                Text('Add Task',
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 30,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35,bottom: 10),
                  child: TextField(
                    autofocus: true,
                    textAlign: TextAlign.center,
                    onChanged: (newvalue){
                      newtask=newvalue;
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {
                   Provider.of<TaskData>(context,listen: false).addTask(newtask);
                   Navigator.pop(context);
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.resolveWith(
                          (state) => Colors.lightBlueAccent))
                )
              ],
            )));
  }
}
