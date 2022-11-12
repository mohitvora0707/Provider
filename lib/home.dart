import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/provider/home_provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Consumer<HomeProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("${value.todoList[index]['title']}"),
                subtitle: Text("${value.todoList[index]['desc']}"),
                trailing: IconButton(
                    onPressed: () {
                      value.removeTodo(value.todoList[index]);
                    },
                    icon: Icon(Icons.delete)),
              );
            },
            itemCount: value.todoList.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Map<String, dynamic> value = {
              "title": "Title: ${Random().nextInt(5000)}",
              "desc": "Desc: ${Random().nextInt(5000)}",
            };
            context.read<HomeProvider>().addTodo(value);
          },
          child: Icon(Icons.add)),
    );
  }
}
