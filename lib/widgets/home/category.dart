import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Khám phá theo danh mục',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  buildCategory(
                      'Đồ ăn', 'assets/images/healthy-food.png'),
                  buildCategory('Đồ uống', 'assets/images/drink.png'),
                  buildCategory(
                      'Làm đẹp', 'assets/images/beauty.png'),
                  buildCategory(
                      'Thời trang', 'assets/images/dress.png'),
                  buildCategory('Khác', 'assets/images/dress.png'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  buildCategory(title, imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: Image(image: AssetImage(imageUrl), width: 35),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(title, style: TextStyle(fontSize: 12))
        ],
      ),
    );
  }
}
