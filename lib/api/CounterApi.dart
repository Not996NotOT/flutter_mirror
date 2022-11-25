import 'package:flutter_mirror/base/BaseApi.dart';
import 'package:flutter_mirror/model/common/Result.dart';
import 'package:flutter_mirror/model/dto/CounterDTO.dart';

import '../utils/Reflect.dart';

const countData = """
{
	"message": "",
	"code": "000000",
	"data": {
		"count": 1
	}
}
""";

class CounterApi extends BaseApi {
  Future<CounterDTO> getCounter() async {
     return await this.get(countData);
  }
}
