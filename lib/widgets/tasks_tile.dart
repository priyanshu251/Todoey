import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final void Function(bool?)? chekboxCallback;
  final void Function()? longPressCallback;

  TasksTile(
      {this.isChecked,
      this.taskTitle,
      this.chekboxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle!,
        style: TextStyle(
            decoration: isChecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) {
          chekboxCallback!(value);
        },
      ),
    );
  }
}
