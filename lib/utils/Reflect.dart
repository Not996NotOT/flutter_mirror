import 'dart:convert';
import 'package:reflectable/reflectable.dart';

class MyReflectable extends Reflectable {
  const MyReflectable()
      : super(invokingCapability, declarationsCapability,
            typeRelationsCapability, libraryCapability);
}

const myReflectable = MyReflectable();

class MyReflect {
  static T reflectInstanceFromMap<T>(Map<String, dynamic> map) {
    ClassMirror classMirror = myReflectable.reflectType(T) as ClassMirror;
    var instance = classMirror.newInstance("fromJson", [map]) as T;
    return instance;
  }

  static T reflectInstanceFromJson<T>(String json) {
    Map<String, dynamic> map = jsonDecode(json);
    return reflectInstanceFromMap(map);
  }
}
