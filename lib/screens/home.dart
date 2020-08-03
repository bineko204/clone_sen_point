import 'package:clone_senpoint/blocs/home_page_bloc/home_page_bloc.dart';
import 'package:clone_senpoint/widgets/home/card-basic.dart';
import 'package:clone_senpoint/widgets/home/category.dart';
import 'package:clone_senpoint/widgets/custom-sliver-appbar.dart';
import 'package:clone_senpoint/widgets/home/hot-deals.dart';
import 'package:clone_senpoint/widgets/home/suggest.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxScrolled) => [
            SliverPersistentHeader(
              delegate: CustomSliverAppbar(expandedHeight: 200),
              pinned: true,
              // floating: true,
            ),
          ],
          body: RefreshIndicator(
            onRefresh: () async {
              return BlocProvider.of<HomePageBloc>(context)
                  .add(HomePageDataFetched());
            },
            child: BlocBuilder<HomePageBloc, HomePageState>(
              builder: (context, state) {
                if (state is HomePageLoadInProgress) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (state is HomePageLoadSuccess) {
                  return ListView(
                    children: <Widget>[
                      Category(),
                      CardBasic(
                        title: 'Gần tôi',
                        list: state.nearShop,
                      ),
                      Suggest(),
                      CardBasic(
                        title: 'Mới nhất',
                         list: state.nearShop,
                      ),
                      HotDeals(data: state.hotDeal,),
                    ],
                  );
                }
                return Text('abc');
              },
            ),
          ),
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
