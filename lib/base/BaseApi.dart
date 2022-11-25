import '../model/common/Result.dart';
import '../utils/Reflect.dart';

class BaseApi {
  Future<T> get<T>(String json) async {
    var result = MyReflect.reflectInstanceFromJson<Result>(json);
    return await MyReflect.reflectInstanceFromMap<T>(result.data);
  }
}
