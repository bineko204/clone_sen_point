import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clone_senpoint/models/hot_deals.dart';
import 'package:clone_senpoint/resources/hot_deals/hot_deals_repository.dart';
import 'package:clone_senpoint/resources/near_shop/near_shop_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageInitial());

  @override
  Stream<HomePageState> mapEventToState(
    HomePageEvent event,
  ) async* {
    if( event is HomePageDataFetched){
      yield HomePageLoadInProgress();
      try{
        final HotDeal hotDealdata = await HotDealsRepository().getHotDealData();
        final List nearShopList = await NearShopRepository().getListShopData();
        yield HomePageLoadSuccess(hotDeal: hotDealdata, nearShop: nearShopList);
      }
      catch(_){
        yield HomePageLoadFailure();
      }
    }
  }
}