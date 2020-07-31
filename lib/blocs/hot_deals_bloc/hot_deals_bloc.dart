import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:clone_senpoint/models/hot_deals.dart';
import 'package:clone_senpoint/resources/hot_deals/hot_deals_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

part 'hot_deals_event.dart';
part 'hot_deals_state.dart';

class HotDealsBloc extends Bloc<HotDealsEvent, HotDealsState> {
  HotDealsBloc() : super(HotDealsInitial());

  @override
  Stream<HotDealsState> mapEventToState(
    HotDealsEvent event,
  ) async* {
    if(event is HotDealsFetched){
      yield HotDealsLoadInProgress();
      try {
        final HotDeal data = await HotDealsRepository().getHotDealData();
        yield HotDealsSuccess(data: data);
      }
      catch(_){
        yield HotDealsFailure();
      }
    }
  }
}
