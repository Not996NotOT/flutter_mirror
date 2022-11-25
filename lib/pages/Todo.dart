import 'package:flutter/material.dart';

import '../modules/todomodule/view/TodoView.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TodoView();
  }
}
