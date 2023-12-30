import 'package:bloomscape/blocs/basket/basket_bloc.dart';
import 'package:bloomscape/blocs/basket/basket_event.dart';
import 'package:bloomscape/blocs/basket/basket_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/svg.dart';

class EditBasketScreen extends StatelessWidget {
  static const String routeName = '/edit-basket';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => EditBasketScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Edit Basket'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Done'),

              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Items',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            BlocBuilder<BasketBloc, BasketState>(builder: (context, State) {
              if (State is BasketLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (State is BasketLoaded) {
                return State.basket.items.length == 0
                    ? Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'No items in the Basket',
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.headline6,
                            )
                          ],
                        ),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: State.basket
                            .itemQuantity(State.basket.items)
                            .keys
                            .length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 5),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(State.basket.itemQuantity(State.basket.items).keys.elementAt(index).imageUrl),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  '${State.basket.itemQuantity(State.basket.items).entries.elementAt(index).value}X',
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Text(
                                    '${State.basket.itemQuantity(State.basket.items).keys.elementAt(index).name}',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                ),
                                IconButton(
                                  visualDensity: VisualDensity.compact,
                                  onPressed: () {
                                    context.read<BasketBloc>()
                                      ..add(RemoveAllItem(State.basket
                                          .itemQuantity(State.basket.items)
                                          .keys
                                          .elementAt(index)));
                                  },
                                  icon: Icon(Icons.delete),
                                ),
                                IconButton(
                                  visualDensity: VisualDensity.compact,
                                  onPressed: () {
                                    context.read<BasketBloc>()
                                      ..add(RemoveItem(State.basket
                                          .itemQuantity(State.basket.items)
                                          .keys
                                          .elementAt(index)));
                                  },
                                  icon: Icon(Icons.remove_circle),
                                ),
                                IconButton(
                                  visualDensity: VisualDensity.compact,
                                  onPressed: () {
                                    context.read<BasketBloc>()
                                      ..add(AddItem(State.basket
                                          .itemQuantity(State.basket.items)
                                          .keys
                                          .elementAt(index)));
                                  },
                                  icon: Icon(Icons.add_circle),
                                ),
                              ],
                            ),
                          );
                        });
              } else {
                return Text('Something went wrong.');
              }
            }),
          ],
        ),
      ),
    );
  }
}
