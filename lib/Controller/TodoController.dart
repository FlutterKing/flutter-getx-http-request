import 'package:datarequest/Models/Todomodel.dart';
import 'package:datarequest/Services/Remoteservices.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {
  var isLoading = true.obs;
  var todoList = List<Todo>().obs;

  @override
  void onInit() {
    fetchfinaltodo();
    super.onInit();
  }

  void fetchfinaltodo() async {
    isLoading(true);
    try {
      var todos = await Dataservices.getTodo();
      if (todos != null) {
        todoList.value = todos;
      }
    } finally {
      isLoading(false);
    }
  }
}
