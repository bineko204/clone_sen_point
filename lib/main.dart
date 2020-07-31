import 'package:clone_senpoint/blocs/hot_deals_bloc/hot_deals_bloc.dart';
import 'package:clone_senpoint/blocs/near_shop_bloc/near_shop_bloc.dart';
import 'package:clone_senpoint/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NearShopBloc()..add(NearShopFetched()),
        ),
        BlocProvider(
          create: (context) => HotDealsBloc()..add(HotDealsFetched()),
        )
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(bodyText1: TextStyle(fontSize: 12)),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
