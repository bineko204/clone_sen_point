import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSliverAppbar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  CustomSliverAppbar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      // overflow: Overflow.visible,
      children: [
        Container(
          color: Colors.blue,
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 56,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 16,
                  ),
                  (expandedHeight - shrinkOffset) > 56
                      ? Container(
                          width: size.width * (1 - (shrinkOffset / expandedHeight)) - 68 > 56
                              ? size.width * (1 - (shrinkOffset / expandedHeight)) - 68
                              : 56,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(25)),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: 4,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Text(
                                  'Tìm kiếm...',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        )
                      : Container(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: (expandedHeight - shrinkOffset) > 56
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        (expandedHeight - shrinkOffset) < 56
                            ? IconButton(
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              )
                            : Container(),
                        (expandedHeight - shrinkOffset) < 56
                            ? buildActionBtn('assets/icons/good.svg')
                            : Container(),
                        (expandedHeight - shrinkOffset) < 56
                            ? buildActionBtn('assets/icons/money.svg')
                            : Container(),
                        (expandedHeight - shrinkOffset) < 56
                            ? buildActionBtn('assets/icons/qr-code.svg')
                            : Container(),
                        (expandedHeight - shrinkOffset) < 56
                            ? buildActionBtn('assets/icons/money-back.svg')
                            : Container(),
                        IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 140,
          left: 0,
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white),
              Positioned(
                top: -9,
                left: -15,
                child: Transform.rotate(
                  angle: pi / 20,
                  child: Container(width: 100, height: 40, color: Colors.white),
                ),
              ),
              Positioned(
                top: -9,
                right: -15,
                child: Transform.rotate(
                  angle: -pi / 20,
                  child: Container(width: 100, height: 40, color: Colors.white),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 60,
          left: 12,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              elevation: 10,
              child: Container(
                  padding: EdgeInsets.all(12),
                  width: MediaQuery.of(context).size.width - 30,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(color: Colors.grey),
                        )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Điểm hiện tại'),
                            Text(
                              '0 điểm',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 12, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            buildListIcon(
                                'Tích điểm', 'assets/icons/good.svg'),
                            buildListIcon(
                                'Dùng điểm', 'assets/icons/money.svg'),
                            buildListIcon(
                                'Quét QR', 'assets/icons/qr-code.svg'),
                            buildListIcon(
                                'Hoàn tiền', 'assets/icons/money-back.svg'),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ],
    );
  }

  buildActionBtn(url) {
    return IconButton(
      icon: SvgPicture.asset(url, width: 25, color: Colors.white,),
      onPressed: () {},
    );
  }

  buildListIcon(title, assetURL) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          SvgPicture.asset(assetURL, width: 30,),
          SizedBox(
            height: 8,
          ),
          Text(title, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
