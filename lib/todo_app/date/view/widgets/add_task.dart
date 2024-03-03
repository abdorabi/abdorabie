
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: camel_case_types
class addTask extends StatefulWidget {
  const addTask({super.key, 
   required this.title,
    required this.discription,
    required this.date,
    this.onSave,
  });
  final TextEditingController title;
  final TextEditingController discription;
  final TextEditingController date;

  final void Function()? onSave;

  @override
  State<addTask> createState() => _addTask();
}

// ignore: camel_case_types
class _addTask extends State<addTask> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextField(
            controller: widget.title,
            decoration: const InputDecoration(hintText: 'Task Title'),
          ),
          TextField(
            controller: widget.discription,
            decoration: const InputDecoration(hintText: 'Task Discription'),
          ),
          TextField(
            controller: widget.date,
            decoration: const InputDecoration(hintText: 'Task Date'),
            onTap: () async {
              showDatePicker(
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2025))
                  .then((taskDate) {
                widget.date.text = DateFormat('dd-MM-yyyy').format(taskDate!);
              });
            },
          ),
          ElevatedButton(onPressed: widget.onSave, child: const Text('Save'))
        ],
      ),
    );
  }
}
