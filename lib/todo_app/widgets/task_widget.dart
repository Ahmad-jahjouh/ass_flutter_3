import 'package:ass_flutter_3/todo_app/data/tasks_data.dart';
import 'package:flutter/material.dart';
import 'package:ass_flutter_3/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Task task;

  TaskWidget(this.task, this.fun);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        secondary: IconButton(
            onPressed: (){
                int index = tasksList.indexOf(task);
                 tasksList.removeAt(index);
        }, icon: Icon(Icons.clear,color: Colors.red,)),
        title: Text(task.title),
        value: task.isCompleted,
        onChanged: (v) {
          fun(task);
        },
      ),
    );
  }
}
