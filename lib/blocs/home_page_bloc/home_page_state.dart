part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  const HomePageState();
}

class HomePageInitial extends HomePageState {
  @override
  List<Object> get props => [];
}
class HomePageLoadInProgress extends HomePageState {
  @override
  List<Object> get props => [];
}
class HomePageLoadSuccess extends HomePageState {
  final HotDeal hotDeal;
  final List nearShop;
  HomePageLoadSuccess({@required this.hotDeal,@required this.nearShop}) : assert(hotDeal != null, nearShop != null);
  @override
  List<Object> get props => [hotDeal, nearShop];
}
class HomePageLoadFailure extends HomePageState {
  @override
  List<Object> get props => [];
}
