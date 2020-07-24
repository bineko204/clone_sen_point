import 'package:clone_senpoint/widgets/home/card-basic.dart';
import 'package:clone_senpoint/widgets/home/category.dart';
import 'package:clone_senpoint/widgets/custom-sliver-appbar.dart';
import 'package:clone_senpoint/widgets/home/suggest.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              delegate: CustomSliverAppbar(expandedHeight: 200),
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Category(),
            ),
            SliverToBoxAdapter(
              child: CardBasic(
                title: 'Gần tôi',
              ),
            ),
            SliverToBoxAdapter(
              child: Suggest(),
            ),
            SliverToBoxAdapter(
              child: CardBasic(
                title: 'Mới nhất',
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
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
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.blue, Colors.red])),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
