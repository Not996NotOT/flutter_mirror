import 'package:json_annotation/json_annotation.dart';
import 'package:reflectable/reflectable.dart';
import '../main.dart';
part 'Person.g.dart';

class MetaReflector extends Reflectable {
  const MetaReflector() : super(const NewInstanceMetaCapability(Person));
}

@JsonSerializable()
@myReflectable
class Person {
  final String firstName;
  final String lastName;
  Person({required this.firstName, required this.lastName});
  @MetaReflector()
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
