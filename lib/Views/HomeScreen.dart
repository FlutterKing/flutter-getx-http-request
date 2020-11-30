import 'package:datarequest/Controller/TodoController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final TodoController _controller = Get.put(TodoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: Obx(() {
        if (_controller.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: _controller.todoList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_controller.todoList[index].title),
            );
          },
        );
      }),
    );
  }
}
