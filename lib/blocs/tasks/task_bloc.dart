import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/taks_model.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskState()) {
    on<AddTask>(_onAddTask);
    on<UpdateTask>(_onUpdateTask);
    on<DeleteTask>(_onDeleteTask);
  }

  void _onAddTask(AddTask event, Emitter<TaskState> emit) {
    final state = this.state;
    emit(TaskState(allTasks: List.from(state.allTasks)..add(event.tasks)));
  }

  void _onUpdateTask(UpdateTask event, Emitter<TaskState> emit) {}

  void _onDeleteTask(DeleteTask event, Emitter<TaskState> emit) {}
}
