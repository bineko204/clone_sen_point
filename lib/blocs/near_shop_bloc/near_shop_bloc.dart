import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clone_senpoint/resources/near_shop/near_shop_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'near_shop_event.dart';
part 'near_shop_state.dart';

class NearShopBloc extends Bloc<NearShopEvent, NearShopState> {
  NearShopBloc() : super(NearShopInitial());

  @override
  Stream<NearShopState> mapEventToState(
    NearShopEvent event,
  ) async* {
    if(event is NearShopFetched){
      yield NearShopLoadInProgress();
      try {
        final List listData = await NearShopRepository().getListShopData();
        yield NearShopLoadSuccess(listShop: listData);
      }
      catch(_){
        yield NearShopLoadFailure();
      }
    }
  }
}
