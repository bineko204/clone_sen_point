import 'package:clone_senpoint/models/hot_deals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotDeals extends StatelessWidget {
  final HotDeal data;
  const HotDeals({
    Key key, this.data,
  }) : super(key: key);
  Color hexToColor(String code) {
    return new Color(int.parse(code.replaceFirst('#', '0xff')));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hot deals!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Center(
                child: Container(
                  // width: MediaQuery.of(context).size.width * 0.8,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  height: 135,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          hexToColor(data.firstColor),
                          hexToColor(data.secondColor)
                        ]),
                  ),
                  child: Row(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(-10, 0),
                        child: Container(
                          width: 20,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6),
                                child: SvgPicture.asset(
                                  'assets/icons/circle.svg',
                                  color: Colors.white,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6),
                                child: SvgPicture.asset(
                                  'assets/icons/circle.svg',
                                  color: Colors.white,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6),
                                child: SvgPicture.asset(
                                  'assets/icons/circle.svg',
                                  color: Colors.white,
                                  width: 20,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6),
                                child: SvgPicture.asset(
                                  'assets/icons/circle.svg',
                                  color: Colors.white,
                                  width: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                              data.avatar
                            ),
                          ),
                          Container(
                            width: 210,
                            padding: EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    data.description,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Text(
                                    'Voucher: ${data.name}',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    data.shopName,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      '${data.point} điểm',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'Còn ${data.dayRemain} ngày',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      
  }
}
