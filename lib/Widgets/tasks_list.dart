import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked: taskdata
                    .tasks[index].isDone,
                taskTitle: taskdata
                    .tasks[index].name!,
                checkboxCallback: (checkboxState) {
                  taskdata.updateTask(taskdata.tasks[index]);
                },
                longPressCallback: ()
            { taskdata.deletedata(taskdata.tasks[index]);
          }
            );
          },
          itemCount: taskdata
              .tasks
              .length,);

      }
    );
  }
}
