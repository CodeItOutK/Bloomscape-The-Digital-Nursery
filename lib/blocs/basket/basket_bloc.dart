import 'package:bloomscape/blocs/basket/basket_event.dart';
import 'package:bloomscape/blocs/basket/basket_state.dart';
import 'package:bloc/bloc.dart';
import 'package:bloomscape/models/models.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  //init state in constructor initialized as basketLoading
  BasketBloc() : super(BasketLoading()) {
    //Event handlers-  (event,func called for them)
    on<StartBasket>(_onStartBasket);
    on<AddItem>(_onAddItem);
    on<RemoveItem>(_onRemoveItem);
    on<RemoveAllItem>(_onRemoveAllItem);
    on<ToggleSwitch>(_onToggleSwitch);
    on<AddVoucher>(_onAddVoucher);
    on<SelectDeliveryTime>(_onSelectDeliveryTime);
  }

  void _onStartBasket(
    StartBasket event,
    Emitter<BasketState> emit,
  ) async {
    emit(BasketLoading());
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(BasketLoaded(basket: Basket()));
    } catch (_) {}
  }

  /*
  emit(BasketLoading());: It immediately emits a BasketLoading state, indicating that the basket is in the process of being loaded.

await Future<void>.delayed(const Duration(seconds: 1));: It introduces a delay of 1 second using Future.delayed. T
his simulates an asynchronous operation, such as fetching data or performing some background task.

emit(BasketLoaded(basket: Basket()));: After the delay, it emits a BasketLoaded state with a new empty Basket() object,
suggesting that the basket has been successfully loaded.

The try and catch block are used to handle any potential errors during the asynchronous operation. In this case,
it catches any error (represented by _) without taking any specific action.
   */


  void _onAddItem(
    AddItem event,
    Emitter<BasketState> emit,
  ) {
    final state = this.state;
    if (state is BasketLoaded) {
      try {
        emit(  // emit method is used to emit new states from a BLoC. It's a callback function provided by the Bloc class, and it plays a crucial role in the state management process.
          BasketLoaded(

            /*This line creates a new state by making a copy of the current basket state and updating its items list to include a new item specified by
             the event. The copyWith method is often used to create a new immutable object with selective modifications.
             */

            basket: state.basket.CopyWith(
              items: List.from(state.basket.items)..add(event.item),
            ),
          ),
        );
      } catch (_) {}
    }
  }

  void _onRemoveItem(
    RemoveItem event,
    Emitter<BasketState> emit,
  ) {
    final state = this.state;
    if (state is BasketLoaded) {
      try {
        emit(
          BasketLoaded(
            basket: state.basket.CopyWith(
              items: List.from(state.basket.items)..remove(event.item),
            ),
          ),
        );
      } catch (_) {}
    }
  }

  void _onRemoveAllItem(
    RemoveAllItem event,
    Emitter<BasketState> emit,
  ) {
    final state = this.state;

    if (state is BasketLoaded) {
      try {
        emit(
          BasketLoaded(
            basket: state.basket.CopyWith(
              items: List.from(state.basket.items)
                ..removeWhere((product) => product == event.item),
            ),
          ),
        );
      } catch (_) {}
    }
  }

  void _onToggleSwitch(
    ToggleSwitch event,
    Emitter<BasketState> emit,
  ) {
    final state = this.state;
    if (state is BasketLoaded) {
      emit(
        BasketLoaded(
          basket: state.basket.CopyWith(brochure: !state.basket.brochure),
        ),
      );
    }
  }

  void _onAddVoucher(
    AddVoucher event,
    Emitter<BasketState> emit,
  ) {
    final state = this.state;
    if (state is BasketLoaded) {
      try {
        emit(
          BasketLoaded(
            basket: state.basket.CopyWith(voucher: event.voucher),
          ),
        );
      } catch (_) {}
    }
  }

  void _onSelectDeliveryTime(
    SelectDeliveryTime event,
    Emitter<BasketState> emit,
  ) {
    final state = this.state;
    if (state is BasketLoaded) {
      try {
        emit(
          BasketLoaded(
            basket: state.basket.CopyWith(deliveryTime: event.deliveryTime),
          ),
        );
      } catch (_) {}
    }
  }

  /*
  final state = this.state;: It retrieves the current state of the BasketBloc. This is often done to access the current state's data for updating.

if (state is BasketLoaded) {: It checks if the current state is of type BasketLoaded. This is a safety check to
 ensure that the basket is loaded before attempting any updates.

emit(BasketLoaded(basket: state.basket.copyWith(deliveryTime: event.deliveryTime),),);: If the current state is loaded,
it emits a new BasketLoaded state with the basket copied from the current state but with an updated delivery time based on the event.

The try and catch block are used to handle any potential errors during the update operation. In this case,
it catches any error (represented by _) without taking any specific action.
   */

}
