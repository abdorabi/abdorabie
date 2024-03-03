import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_application/auth/view/sign_In.dart';
import 'package:phone_application/core/shared_preferences_helper.dart';
import 'package:phone_application/todo_app/cubit/tasks_cubit.dart';
import 'package:phone_application/todo_app/cubit/tasks_states.dart';
import 'package:phone_application/todo_app/date/view/widgets/add_task.dart';
import 'package:phone_application/todo_app/date/view/widgets/task_view.dart';
import 'package:phone_application/todo_app/date/task_model_.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  // List<TaskModel> tasks = [];
  final TextEditingController titleCont = TextEditingController();

  final TextEditingController discriptionCont = TextEditingController();

  final TextEditingController dateCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TasksCubit cubit = context.read<TasksCubit>();
    return BlocConsumer<TasksCubit, TaskState>(
      listener: (context, state) {
        if (state is InsertTaskState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Done!'),
            duration: Duration(seconds: 1),
            backgroundColor: Colors.green,
          ));
        } else if (state is DeleteTaskState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Deleted'),
            duration: Duration(seconds: 1),
            backgroundColor: Colors.yellow,
          ));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () async {
                    ShareHelper.delete('email');

                    // ignore: use_build_context_synchronously
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  icon: const Icon(Icons.door_front_door))
            ],
            title: const Text('To Do App'),
          ),
          body: Center(
            child: ListView.builder(
              itemBuilder: (context, index) {
                TaskModel task = cubit.tasks[index];
                return TaskView(
                  task: task,
                  onDismissed: (p0) {
                    cubit.deleteTask(task);
                  },
                  onToggeled: (p0) {
                    cubit.toggelTask(task);
                  },
                );
              },
              itemCount: cubit.tasks.length,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                clipBehavior: Clip.antiAlias,
                context: context,
                builder: (context) {
                  return addTask(
                      discription: discriptionCont,
                      title: titleCont,
                      date: dateCont,
                      onSave: () {
                        TaskModel newTask = TaskModel(
                            title: titleCont.text,
                            subTitle: discriptionCont.text,
                            date: dateCont.text,
                            isChecked: false);
                        cubit.addTask(newTask);
                        titleCont.clear();
                        discriptionCont.clear();
                        dateCont.clear();
                        Navigator.pop(context);
                      });
                },
              );
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }
}
