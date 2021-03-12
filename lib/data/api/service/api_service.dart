import 'package:chopper/chopper.dart';

part 'api_service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  @Get(path: 'v2/list?page={list}&limit={quantity}')
  Future<Response> pictures(@Path() int list, @Path() int quantity);

  static ApiService create() {
    chopperLogger.clearListeners();
    chopperLogger.onRecord.listen((rec) {
      print('${rec.level.name} : ${rec.time} : ${rec.message}');
    });

    final client = ChopperClient(
        baseUrl: 'https://picsum.photos/',
        services: [_$ApiService()],
        interceptors: [
          HeadersInterceptor({
            'Cache-Control': 'no-cache',
          }),
          HttpLoggingInterceptor(),
        ],
        converter: JsonConverter());

    return _$ApiService(client);
  }
}
