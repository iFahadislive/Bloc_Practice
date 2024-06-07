part of 'task_bloc.dart';

sealed class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object> get props => [];
}

class AddTask extends TaskEvent {
  final Tasks tasks;

  AddTask({required this.tasks});

  @override
  List<Object> get props => [tasks];
}

class UpdateTask extends TaskEvent {
  final Tasks tasks;

  const UpdateTask({required this.tasks});

  @override
  List<Object> get props => [tasks];
}

class DeleteTask extends TaskEvent {
  final Tasks tasks;

  const DeleteTask({required this.tasks});

  @override
  List<Object> get props => [tasks];
}
