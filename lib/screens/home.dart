
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
            SliverList(
              delegate: SliverChildListDelegate([
                Category(),
                CardBasic(
                  title: 'Gần tôi',
                ),
                Suggest(),
                CardBasic(
                  title: 'Mới nhất',
                ),
                HotDeals(),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 56,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('explose11')),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text('explose')),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm), title: Text('explose2')),
            BottomNavigationBarItem(
                icon: Icon(Icons.backup), title: Text('explose3')),
            BottomNavigationBarItem(
                icon: Icon(Icons.tab), title: Text('explose4')),
            BottomNavigationBarItem(
                icon: Icon(Icons.gamepad), title: Text('explose5')),
          ],
        ),
      ),
    );
  }
}
