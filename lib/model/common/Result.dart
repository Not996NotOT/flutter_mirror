import 'package:json_annotation/json_annotation.dart';
import 'package:reflectable/reflectable.dart';
import '../../utils/Reflect.dart';
part 'Result.g.dart';

class MetaReflector extends Reflectable {
  const MetaReflector() : super(const NewInstanceMetaCapability(Result));
}

@JsonSerializable()
@myReflectable
class Result {
  final String code;
  final String message;
  final dynamic data;
  Result({required this.code, required this.message, required this.data});
  @MetaReflector()
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
