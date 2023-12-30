import 'package:bloomscape/models/models.dart';
import 'package:equatable/equatable.dart';

abstract class BasketEvent extends Equatable {

  /*
   Equatable-to simplify the process of comparing objects for equality.When a class extends Equatable,
   it can override the props getter to provide a list of properties that should be considered when determining if two objects are equal.
   */

  const BasketEvent();

  @override
  List<Object> get props => [];  //This method is part of Equatable and is used to define the properties that should be considered when comparing objects for equality.
                                  // In this case, it returns an empty list.
}

class StartBasket extends BasketEvent {
  @override
  List<Object> get props => [];
}

class AddItem extends BasketEvent {
  // final Products item;
  final Product item;

  const AddItem(this.item);

  @override
  List<Object> get props => [item];
}
/*
AddItem class: This event represents adding an item to the basket.
It has a Product object as a property, and the props method is overridden to consider this property when comparing objects for equality.
 */
class RemoveItem extends BasketEvent {
  final Product item;

  const RemoveItem(this.item);

  @override
  List<Object> get props => [item];
}

class ToggleSwitch extends BasketEvent {
  const ToggleSwitch();
  @override
  List<Object> get props => [];
}

class RemoveAllItem extends BasketEvent {
  final Product item;

  const RemoveAllItem(this.item);

  @override
  List<Object> get props => [item];
}

class AddVoucher extends BasketEvent {
  final Voucher voucher;
  const AddVoucher(this.voucher);
  @override
  List<Object> get props => [voucher];
}

class SelectDeliveryTime extends BasketEvent {
  final DeliveryTime deliveryTime;

  const SelectDeliveryTime(this.deliveryTime);
  @override
  List<Object> get props => [deliveryTime];
}
