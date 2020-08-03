import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

class HotDeals {
  HotDeals();
  Future getHotDeals() async{
    final random = Random();
    final id = random.nextInt(50);
    final baseURL = 'https://5f1ea01a57e3290016863786.mockapi.io/api/hot_deals/$id';
    final response = await http.get(baseURL);
    if(response.statusCode != 200){
      throw Exception('error!!!');
    }
    return jsonDecode(response.body);
  }
}
