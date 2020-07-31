

import 'package:clone_senpoint/models/near_shop.dart';
import 'package:clone_senpoint/resources/near_shop/near_shop_api.dart';


class NearShopRepository {
  NearShopRepository();
  Future getListShopData() async{
    final jsonData = await NearShopApi().getListShop();
    final result = jsonData.map((data) => NearShop(
      id: data['id'],
      title: data['title'],
      address: data['address'],
      sale: data['sale'],
      star: data['star'],
      distance: data['distance'],
      image: data['image'],
    )).toList();
    return result;
  }
}