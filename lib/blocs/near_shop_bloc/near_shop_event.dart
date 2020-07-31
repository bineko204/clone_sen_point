part of 'near_shop_bloc.dart';

abstract class NearShopEvent extends Equatable {
  const NearShopEvent();
}

class NearShopFetched extends NearShopEvent{
  NearShopFetched();
    @override
  List<Object> get props => [];
}