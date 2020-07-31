import 'package:clone_senpoint/blocs/near_shop_bloc/near_shop_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardBasic extends StatelessWidget {
  final String title;
  const CardBasic({
    Key key,
    this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NearShopBloc, NearShopState>(
      builder: (context, state) {
        print(state.toString());
        if (state is NearShopLoadSuccess) {
          final list = state.listShop;
          return Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(title,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(
                        'Xem thêm >',
                        style:
                            TextStyle(fontSize: 12, color: Colors.blueAccent),
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
                                      list[index].image,
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
                                      list[index].title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      list[index].address,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
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
        return Text('adfasdf');
      },
    );
  }

  _buildCardDesc(data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _buildCardDescItem(data.sale.toString(), 'assets/icons/money-stack.svg',
            Colors.blue, Colors.blue),
        _buildCardDescItem(data.star.toString(), 'assets/icons/star.svg',
            Colors.black87, Colors.yellow),
        _buildCardDescItem(data.distance, 'assets/icons/location.svg',
            Colors.black87, Colors.black),
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
