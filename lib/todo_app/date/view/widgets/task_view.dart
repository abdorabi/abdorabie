// ignore: unused_import
import 'package:phone_application/todo_app/date/repository.dart';
import 'package:phone_application/todo_app/date/task_model_.dart';
import 'package:flutter/material.dart';

class TaskView extends StatefulWidget {
  final TaskModel task;
  final void Function(bool?)? onToggeled;
  final void Function(DismissDirection)? onDismissed;
  const TaskView({required this.onToggeled,  required this.task,required this.onDismissed,super.key});
 
  
  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Container(
        color: Colors.red,
      ),
      onDismissed: (direction) {
        Repository.deleteTask(widget.task.id!);
      },
      key: ValueKey(widget.task.id),
      child: ListTile(
        title: Text(widget.task.title),
        subtitle: Text(widget.task.subTitle),
        leading: CircleAvatar(radius: 50, child: Text(widget.task.date)),
        trailing: Checkbox(
            value: widget.task.isChecked,
            onChanged: (newValue) {
              setState(() {
                Repository.toggleCheck(widget.task);
                widget.task.isChecked = newValue!;
              });
            }),
      ),
    );
  }
}
