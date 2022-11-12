import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  List<Map<String, dynamic>> todoList = [];

  void addTodo(Map<String, dynamic> value) {
    todoList.add(value);
    notifyListeners();
  }

  void removeTodo(Map<String, dynamic> value) {
    todoList.remove(value);
    notifyListeners();
  }
}
