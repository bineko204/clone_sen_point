import 'package:equatable/equatable.dart';

class HotDeal extends Equatable {
  final String id, createdAt, name, firstColor, secondColor,description,shopName,point, dayRemain, avatar ;
  HotDeal({this.id, this.createdAt, this.name, this.firstColor, this.secondColor, this.description, this.shopName, this.point, this.dayRemain, this.avatar});
  @override
  List<Object> get props => [id, createdAt, name, firstColor, secondColor,description,shopName,point, dayRemain, avatar];
}
