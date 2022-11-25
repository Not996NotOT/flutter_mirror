import 'package:json_annotation/json_annotation.dart';
import 'package:reflectable/reflectable.dart';
import '../../utils/Reflect.dart';
part 'CounterDTO.g.dart';

class MetaReflector extends Reflectable {
  const MetaReflector() : super(const NewInstanceMetaCapability(CounterDTO));
}


@JsonSerializable()
@myReflectable
class CounterDTO{
  final int count;
  CounterDTO({required this.count});
  @MetaReflector()
  factory CounterDTO.fromJson(Map<String, dynamic> json) => _$CounterDTOFromJson(json);
  Map<String, dynamic> toJson() => _$CounterDTOToJson(this);
}
