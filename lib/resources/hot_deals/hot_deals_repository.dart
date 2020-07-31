import 'package:clone_senpoint/models/hot_deals.dart';
import 'package:clone_senpoint/resources/hot_deals/hot_deals_api.dart';


class HotDealsRepository {
  HotDealsRepository();

  Future getHotDealData() async {
    final rawData = await HotDeals().getHotDeals();
    final result = HotDeal(
      id: rawData['id'],
      avatar: rawData['avatar'],
      name: rawData['name'],
      description: rawData['description'],
      shopName: rawData['shopName'],
      point: rawData['point'].toString(),
      firstColor: rawData['firstColor'],
      secondColor: rawData['secondColor'],
      dayRemain: rawData['dayRemain'].toString(),
    );
    return result;
  }
}
