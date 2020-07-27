import 'package:clone_senpoint/widgets/home/card-basic.dart';
import 'package:clone_senpoint/widgets/home/category.dart';
import 'package:clone_senpoint/widgets/custom-sliver-appbar.dart';
import 'package:clone_senpoint/widgets/home/hot-deals.dart';
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
              // floating: true,
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
              child: HotDeals(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 56,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('explose'))
          ],
        ),
      ),
    );
  }
}
