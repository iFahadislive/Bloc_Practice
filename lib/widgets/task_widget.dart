import 'package:flutter/material.dart';

import '../models/taks_model.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key, required this.taskList});

  final List<Tasks> taskList;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: widget.taskList.length,
          itemBuilder: (context, index) {
            var task = widget.taskList[index];
            return ListTile(
              title: Text(task.title),
              trailing: Checkbox(value: task.isDone, onChanged: (value) {}),
            );
          }),
    );
  }
}
