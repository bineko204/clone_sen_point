import 'dart:convert';

import 'package:http/http.dart' as http;

class NearShopApi {
  static const baseUrl = 'https://www.metaweather.com';

  NearShopApi();
  Future getListShop() async{
    final baseURL = 'https://5f1ea01a57e3290016863786.mockapi.io/api/shop';
    final response = await http.get(baseURL);
    if(response.statusCode != 200){
      throw Exception('error!!!');
    }
    return jsonDecode(response.body);
  }
}
