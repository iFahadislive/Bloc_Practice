import 'package:bloc_practice/models/taks_model.dart';
import 'package:bloc_practice/widgets/task_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/tasks/task_bloc.dart';

class TaskPage extends StatefulWidget {
  TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        List<Tasks> tasksList = state.allTasks;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple.shade100,
            title: const Text('Task App'),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Chip(label: Text('Task')),
              TaskList(taskList: tasksList),
            ],
          ),
        );
      },
    );
  }
}
