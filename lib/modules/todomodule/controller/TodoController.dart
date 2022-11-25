import 'package:flutter_mirror/api/CounterApi.dart';
import 'package:flutter_mirror/base/BaseController.dart';
import 'package:get/get.dart';

class TodoController extends BaseController {
  var count = 0.obs;
  final CounterApi counterApi = new CounterApi();
  increment() => count++;
  @override
  void onInit() async {
    super.onInit();
    var data = await this.counterApi.getCounter();
    this.count.value = data.count;
  }
}
