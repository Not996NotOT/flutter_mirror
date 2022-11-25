import 'package:flutter/material.dart';
import 'package:flutter_mirror/api/CounterApi.dart';
import 'package:flutter_mirror/api/TodoApi.dart';
import 'package:flutter_mirror/main.reflectable.dart';
import 'package:flutter_mirror/pages/Todo.dart';
import 'package:flutter_mirror/utils/Reflect.dart';
import 'package:reflectable/reflectable.dart';
import 'package:get/get.dart';
import 'model/common/Result.dart';

void main() {
  initializeReflectable();
  void main() => runApp(GetMaterialApp(home: MyApp()));
//   var json = """
// {
//   "code":"0000",
//   "message":"获取数据成功",
//   "data":{
//     "firstName": "zhang",
//     "lastName": "xing",
//     "info": [
//       {
//         "phone": "17749531388",
//         "address": "小区1",
//         "rooms": [
//           {"name": "room1", "area": 130}
//         ]
//       }
//     ]
//   }
// }

// """;

//   var result = MyReflect.reflectInstanceFromJson<Result>(json);
//   print(result.message);
//   var personInstance = MyReflect.reflectInstanceFromMap<Person>(result.data);
//   // var personInstance = MyReflect.reflectInstanceFromJson<Person>(result.data);
//   print(personInstance.firstName + personInstance.lastName);
//   print(personInstance.info[0].phone);
//   print(personInstance.info[0].address);
//   print(personInstance.info[0].rooms[0].name);
//   print(personInstance.info[0].rooms[0].area);
//   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Todo(),
    );
  }
}
