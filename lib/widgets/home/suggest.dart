import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Suggest extends StatelessWidget {
  const Suggest({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listImg = [
      'https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg',
      'https://www.w3schools.com/howto/img_forest.jpg',
      'https://www.gettyimages.pt/gi-resources/images/Homepage/Hero/PT/PT_hero_42_153645159.jpg'
    ];
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Gợi ý từ Sen Point',
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 16,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 150.0,
              disableCenter: true,
              viewportFraction: 0.8,
            ),
            items: listImg.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
