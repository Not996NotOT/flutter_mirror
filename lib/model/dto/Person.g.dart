// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Room _$RoomFromJson(Map<String, dynamic> json) {
  return Room(
    name: json['name'] as String,
    area: json['area'] as int,
  );
}

Map<String, dynamic> _$RoomToJson(Room instance) => <String, dynamic>{
      'name': instance.name,
      'area': instance.area,
    };

Info _$InfoFromJson(Map<String, dynamic> json) {
  return Info(
    phone: json['phone'] as String,
    address: json['address'] as String,
    rooms: (json['rooms'] as List<dynamic>)
        .map((e) => Room.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'phone': instance.phone,
      'address': instance.address,
      'rooms': instance.rooms,
    };

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person(
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    info: (json['info'] as List<dynamic>)
        .map((e) => Info.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'info': instance.info,
    };
