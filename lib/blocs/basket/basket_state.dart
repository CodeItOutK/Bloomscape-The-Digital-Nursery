import 'package:bloomscape/models/models.dart';
import 'package:equatable/equatable.dart';

abstract class BasketState extends Equatable {
  const BasketState();
}

class BasketLoading extends BasketState {
  @override
  List<Object> get props => [];
}

class BasketLoaded extends BasketState {
  final Basket basket;

  const BasketLoaded({required this.basket});

  @override
  List<Object> get props => [basket];
}

/*
BasketLoaded class: This state class represents a state where the basket has been successfully loaded.
It extends BasketState and includes a property basket of type Basket, indicating the current state of the shopping basket.

List<Object> get props => [basket];: The props method is overridden to consider the basket property when comparing objects for equality.
 */
