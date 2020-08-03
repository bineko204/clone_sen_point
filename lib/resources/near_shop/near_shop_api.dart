import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;

class NearShopApi {
  static const baseUrl = 'https://www.metaweather.com';

  NearShopApi();
  Future getListShop() async{
    final random = Random();
    final page = random.nextInt(10);
    final baseURL = 'https://5f1ea01a57e3290016863786.mockapi.io/api/shop?p=$page&l=5';
    final response = await http.get(baseURL);
    if(response.statusCode != 200){
      throw Exception('error!!!');
    }
    return jsonDecode(response.body);
  }
}
