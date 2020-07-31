part of 'near_shop_bloc.dart';

abstract class NearShopState extends Equatable {
  const NearShopState();
  @override
  List<Object> get props => [];
}

class NearShopInitial extends NearShopState {}

class NearShopLoadInProgress extends NearShopState {}

class NearShopLoadSuccess extends NearShopState {
  final List listShop;
  NearShopLoadSuccess({@required this.listShop}) : assert(listShop != null);
  @override
  List<Object> get props => listShop;
}

class NearShopLoadFailure extends NearShopState {
}
