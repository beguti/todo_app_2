// ignore_for_file: non_constant_identifier_names

import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

//references our box
  final _myBox = Hive.box('myBox');

  //run this method if this is the 1st time ever opening this app
  void CreateInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //load the data from database
  void LoadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void UpdateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
