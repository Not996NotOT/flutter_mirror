import 'package:json_annotation/json_annotation.dart';
import 'package:reflectable/reflectable.dart';
import '../../utils/Reflect.dart';
part 'Person.g.dart';

class MetaReflector extends Reflectable {
  const MetaReflector() : super(const NewInstanceMetaCapability(Person));
}

@JsonSerializable()
@myReflectable
class Room {
  final String name;
  final int area;
  Room({required this.name, required this.area});
  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
  Map<String, dynamic> toJson() => _$RoomToJson(this);
}

@JsonSerializable()
class Info {
  final String phone;
  final String address;
  final List<Room> rooms;
  Info({required this.phone, required this.address, required this.rooms});
  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
  Map<String, dynamic> toJson() => _$InfoToJson(this);
}

@JsonSerializable()
@myReflectable
class Person {
  final String firstName;
  final String lastName;
  final List<Info> info;
  Person({required this.firstName, required this.lastName, required this.info});
  @MetaReflector()
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
