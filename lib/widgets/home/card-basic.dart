import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardItem {
  final String cardTitle;
  final String imageUrl;
  final String location;
  final String sale;
  final String star;
  final String distance;
  CardItem({
    this.cardTitle,
    this.imageUrl,
    this.location,
    this.sale,
    this.star,
    this.distance,
  });
}

class CardBasic extends StatelessWidget {
  final String title;
  const CardBasic({
    Key key, this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final list = [
      CardItem(
        cardTitle: 'Trà sữa DeaTea',
        imageUrl:
            'https://placevietnam.com/img/full/binh_luan/2/cafe-deatea-tra-sua-banh-ngot-1533805391-13635.jpg',
        location: '23 ngách 23/2 dịch vọng, cầu giấy, hà nội',
        sale: '10%',
        star: '4.2',
        distance: '532m',
      ),
      CardItem(
        cardTitle: 'Chè ngon Ba Lá',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR4_9SR6aCqrc7GxbqLVdHYTjonnrxbztDOpQ&usqp=CAU',
        location: '23 ngách 23/2 dịch vọng, cầu giấy, hà nội',
        sale: '10%',
        star: '4.7',
        distance: '532m',
      ),
      CardItem(
        cardTitle: 'LeeTee Nguyễn Phong Sắc',
        imageUrl:
            'https://images.foody.vn/res/g77/762718/s800/foody-leetee-tea-juice-nguyen-phong-sac-841-636682404140149267.jpg',
        location: '23 ngách 23/2 dịch vọng, cầu giấy, hà nội',
        sale: '10%',
        star: '4.0',
        distance: '532m',
      ),
      CardItem(
        cardTitle: 'Koko Pet - Vương quốc thú cưng',
        imageUrl:
            'https://lh3.googleusercontent.com/ZRcSvcDv2ZBKY4B-HFr2TuADTrWR2npfiS-SkCddorBa0rsfogO5EJ0Hc2HtBiXZBoBcj0E7i5A8rqjGgNQv3-l9SbgrysbrOSO9wTDNUl9H_bJEPMSyx32XI-NodUsheL0Qpu_O',
        location: '23 ngách 23/2 dịch vọng, cầu giấy, hà nội',
        sale: '10%',
        star: '4.7',
        distance: '532m',
      ),
    ];

    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  'Xem thêm >',
                  style: TextStyle(fontSize: 12, color: Colors.blueAccent),
                )
              ],
            ),
          ),
          Container(
            height: 310,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 240,
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image(
                              image: NetworkImage(
                                list[index].imageUrl,
                              ),
                              fit: BoxFit.fitWidth, // use this
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(16),
                          padding: EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                list[index].cardTitle,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                list[index].location,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              _buildCardDesc(list[index]),
                            ],
                          ),
                        ),
                        Text(
                          'Xem ngay',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _buildCardDesc(data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _buildCardDescItem(
            data.sale, 'assets/icons/money-stack.svg', Colors.blue, Colors.blue),
        _buildCardDescItem(
            data.star, 'assets/icons/star.svg', Colors.black87, Colors.yellow),
        _buildCardDescItem(
            data.distance, 'assets/icons/location.svg', Colors.black87, Colors.black),
      ],
    );
  }

  _buildCardDescItem(title, iconURL, titleColor, iconColor) {
    return Container(
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            iconURL,
            color: iconColor,
            height: 16,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            title,
            style: TextStyle(color: titleColor, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
