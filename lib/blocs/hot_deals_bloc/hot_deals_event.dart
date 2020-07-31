part of 'hot_deals_bloc.dart';

abstract class HotDealsEvent extends Equatable {
  const HotDealsEvent();
  @override
  List<Object> get props => [];
}
class HotDealsFetched extends HotDealsEvent {
  HotDealsFetched();
}
