import 'package:bloc_practice/models/taks_model.dart';
import 'package:bloc_practice/tasks/task_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/tasks/task_bloc.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(BlocPractice()),
  );
}

class BlocPractice extends StatefulWidget {
  const BlocPractice({super.key});

  @override
  State<BlocPractice> createState() => _BlocPracticeState();
}

class _BlocPracticeState extends State<BlocPractice> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TaskBloc()..add(AddTask(tasks: Tasks(title: 'Task 1'))),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskPage(),
      ),
    );
  }
}
