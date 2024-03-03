import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_application/todo_app/cubit/tasks_states.dart';
import 'package:phone_application/todo_app/date/repository.dart';
import 'package:phone_application/todo_app/date/task_model_.dart';

class TasksCubit extends Cubit<TaskState> {
  TasksCubit(super.initialState);
  List<TaskModel> tasks = [];

  initCubit ()async{
    await Repository.init();
    getAllTasks();
  }

  getAllTasks() async {
   tasks.clear();
   tasks = await Repository.fetshAllTasks();
    emit(TaskLodedState());
  }

  addTask(TaskModel task) async {
    await Repository.insertTask(task);
    emit(InsertTaskState());
    getAllTasks();
  }

  toggelTask(TaskModel task) async {
    await Repository.toggleCheck(task);
    emit(UpdateTaskState());
    getAllTasks();
  }

  deleteTask(TaskModel task) async {
    await Repository.deleteTask(task.id!);
    tasks.remove(task);
    emit(DeleteTaskState());
    getAllTasks();
  }
}
