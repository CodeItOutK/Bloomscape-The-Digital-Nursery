
import 'package:bloomscape/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:bloomscape/models/models.dart';
import 'delivery_time_model.dart';

class Basket extends Equatable {
  final List<Product> items;
  final bool brochure;
  final Voucher? voucher;
  final DeliveryTime? deliveryTime;

  Basket({
    this.items = const <Product>[],
    this.brochure = false,
    this.voucher,
    this.deliveryTime,
  });

  Basket CopyWith({
    List<Product>? items,
    bool? brochure,
    Voucher? voucher,
    DeliveryTime? deliveryTime,
  }) {
    return Basket(
      items: items ?? this.items,
      brochure: brochure ?? this.brochure,
      voucher: voucher ?? this.voucher,
      deliveryTime: deliveryTime ?? this.deliveryTime,
    );
  }

  @override
  List<Object?> get props => [items, brochure, voucher, deliveryTime];

  Map itemQuantity(items) {
    var quantity = Map();

    items.forEach((item) {
      if (!quantity.containsKey(item)) {
        quantity[item] = 1;
      } else {
        quantity[item] += 1;
      }
    });
    return quantity;
  }

  double get subtotal =>
      items.fold(0, (total, current) => total + current.price);

  double total(subtotal) {
    return (voucher == null) ? subtotal + 49 : subtotal + 5 - voucher!.value;
  }

  String get subtotalString => subtotal.toStringAsFixed(2);

  String get totalString => total(subtotal).toStringAsFixed(2);
}
