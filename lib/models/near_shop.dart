import 'package:equatable/equatable.dart';

class NearShop extends Equatable {
  final String id, title, address, distance, image;
  final int sale, star;
  NearShop(
      {this.title,
      this.id,
      this.address,
      this.distance,
      this.image,
      this.sale,
      this.star});
  @override
  List<Object> get props => [id, title, address, distance, image, sale, star];
}
