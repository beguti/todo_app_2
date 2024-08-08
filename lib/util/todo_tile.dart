// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25.0,
        left: 25,
        right: 25,
      ),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            //checkbox
            Checkbox(value: taskCompleted, onChanged: onChanged),

            //task name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.lime,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
