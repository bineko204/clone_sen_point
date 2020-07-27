import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HotDeals extends StatelessWidget {
  const HotDeals({
    Key key,
  }) : super(key: key);

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
                    colors: [Colors.purpleAccent, Colors.red]),
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
                            padding: const EdgeInsets.symmetric(
                                vertical: 6),
                            child: SvgPicture.asset(
                              'assets/icons/circle.svg',
                              color: Colors.white,
                              width: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6),
                            child: SvgPicture.asset(
                              'assets/icons/circle.svg',
                              color: Colors.white,
                              width: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6),
                            child: SvgPicture.asset(
                              'assets/icons/circle.svg',
                              color: Colors.white,
                              width: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6),
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
                          'https://lifesup.com.vn/wp-content/uploads/2018/08/lifesup-58e74de32c610.jpg',
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
                                  borderRadius:
                                      BorderRadius.circular(20)),
                              child: Text(
                                'Giá bán 795.000đ Giá bán 795.000đ Giá bán 795.000đ',
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
                                'Voucher: Bấm huyệt các kiểu abcxyz',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8),
                              child: Text(
                                'Spa Yummy',
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '5000 điểm',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                 Text(
                                  'Còn 28 ngày',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white),
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
