part of 'hot_deals_bloc.dart';

abstract class HotDealsState extends Equatable {
  const HotDealsState();
}

class HotDealsInitial extends HotDealsState {
  @override
  List<Object> get props => [];
}
class HotDealsLoadInProgress extends HotDealsState {
  @override
  List<Object> get props => [];
}
class HotDealsSuccess extends HotDealsState {
  final HotDeal data;
  HotDealsSuccess({@required this.data}) : assert (data != null);
  @override
  List<Object> get props => [data];
}
class HotDealsFailure extends HotDealsState {
  @override
  List<Object> get props => [];
}
