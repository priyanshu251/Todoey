import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, child) => ListView.builder(
        itemBuilder: (context, index) {
          final task = TaskData.tasks[index];
          return TasksTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              chekboxCallback: (checkboxState) {
                TaskData.updateTask(task);
              },
              longPressCallback: () {
                TaskData.clearTask(task);
              });
        },
        itemCount: TaskData.taskCount,
      ),
    );
  }
}
