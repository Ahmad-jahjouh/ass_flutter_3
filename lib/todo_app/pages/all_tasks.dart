import 'package:flutter/material.dart';
import 'package:ass_flutter_3/todo_app/data/tasks_data.dart';
import 'package:ass_flutter_3/todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  Function delete;
  AllTasksScreen(this.fun,this.delete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index],fun,delete);
        });
  }
}
