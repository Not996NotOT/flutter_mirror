import 'dart:convert';
import 'package:flutter_mirror/model/common/Result.dart';
import 'package:reflectable/reflectable.dart';

class MyReflectable extends Reflectable {
  const MyReflectable()
      : super(invokingCapability, declarationsCapability,
            typeRelationsCapability, libraryCapability);
}

const myReflectable = MyReflectable();

class MyReflect {
  static T reflectInstanceFromMap<T>(Map<String, dynamic> map,
      {methodName = "fromJson"}) {
    ClassMirror classMirror = myReflectable.reflectType(T) as ClassMirror;
    var instance = classMirror.newInstance(methodName, [map]) as T;
    return instance;
  }

  static T reflectInstanceFromJson<T>(String json) {
    Map<String, dynamic> map = jsonDecode(json);
    return reflectInstanceFromMap(map);
  }

  static T reflectDefaultInstance<T>() {
    ClassMirror classMirror = myReflectable.reflectType(T) as ClassMirror;
    return classMirror.newInstance(T.runtimeType.toString(), []) as T;
  }
}
