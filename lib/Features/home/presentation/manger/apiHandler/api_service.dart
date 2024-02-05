import 'package:dio/dio.dart';

class ApiService {


  final String SearchKeyWord1 ;
  final String SearchKeyWord2;
  final Dio _dio;

  ApiService(this._dio, this.SearchKeyWord1, this.SearchKeyWord2);

  Future<Map<String, dynamic>> get1({required String endPoint}) async {

    // var _baseUrl1 = 'https://newsapi.org/v2/everything?' +
    //     'q=$SearchKeyWord1&' +
    //     'from=2024-02-05&' +
    //     'sortBy=popularity&' +
    //     'apiKey=fce85e20fcb940ecbf58d2585ca55a8e';

    print("news api result");

    var response1 = await _dio.get('https://newsapi.org/v2/everything?q=Apple&from=2024-02-05&sortBy=popularity&apiKey=fce85e20fcb940ecbf58d2585ca55a8e');
    print(response1.data);
    return response1.data;
  }
  Future<Map<String, dynamic>> get2({required String endPoint}) async {

    var _baseUrl2 = 'https://newsapi.org/v2/everything?' +
        'q=$SearchKeyWord2&' +
        'from=2024-02-05&' +
        'sortBy=popularity&' +
        'apiKey=fce85e20fcb940ecbf58d2585ca55a8e';

    var response2 = await _dio.get('$_baseUrl2$endPoint');
    return response2.data;
  }
}
