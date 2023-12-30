import 'package:bloomscape/blocs/basket/basket_bloc.dart';
import 'package:bloomscape/blocs/basket/basket_event.dart';
import 'package:bloomscape/blocs/basket/basket_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class BasketScreen extends StatelessWidget {
  static const String routeName = '/basket';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => BasketScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('CART'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/edit-basket');
            },
            icon: Icon(Icons.edit),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/checkout');
                },
                child: Text('Go To Checkout'),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Brochures',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0)),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Do you need brochures?',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),

                    BlocBuilder<BasketBloc, BasketState>(
                      builder: (context, state) {
                        if (state is BasketLoading) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (state is BasketLoaded) {
                          return SizedBox(
                            width: 100,
                            child: SwitchListTile(
                              dense: false,
                              value: state.basket.brochure,
                              onChanged: (bool? newValue) {
                                context.read<BasketBloc>().add(ToggleSwitch());
                              },
                            ),
                          );
                        } else {
                          return Text('Something went wrong');
                        }
                      },
                    ),
                  ],
                ),

              ),
              SizedBox(height: 20,),
              Text(
                'Items',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              SizedBox(height: 20,),
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
                                  Text(
                                    'Rs.${State.basket.itemQuantity(State.basket.items).keys.elementAt(index).price}X',
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                ],
                              ),

                            );
                          });
                } else {
                  return Text('Something went wrong.');
                }
              }),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 100,
                margin: const EdgeInsets.only(top: 5),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SvgPicture.asset('assets/delivery.svg'),
                    Image.asset("assets/images/delivery.jpg"),
                    BlocBuilder<BasketBloc, BasketState>(
                        builder: (context, state) {
                      if (state is BasketLoaded) {
                        return (state.basket.deliveryTime == null)
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    'Delivery on same day',
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/delivery-time');
                                    },
                                    child: Text(
                                      'Change',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary),
                                    ),
                                  )
                                ],
                              )

                            : Text(
                                'Delivery at ${state.basket.deliveryTime!.value}',
                                style: Theme.of(context).textTheme.headline6,
                              );
                      } else {
                        return Text('Something went wrong');
                      }
                    })
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 100,
                margin: const EdgeInsets.only(top: 5),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocBuilder<BasketBloc, BasketState>(
                      builder: (context, state) {
                        if (state is BasketLoaded) {
                          return (state.basket.voucher == null)
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 20),
                                    Text(
                                      'Do you have a voucher?',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/voucher');
                                      },
                                      child: Text(
                                        'Apply',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6!
                                            .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary),
                                      ),
                                    )
                                  ],
                                )
                              : Text(
                                  'Your Voucher is added!',
                                  style: Theme.of(context).textTheme.headline6,
                                );
                        } else {
                          return Text('Something went wrong');
                        }
                      },
                    ),
                    // SvgPicture.asset('assets/voucher.svg'),


                    Image.asset("assets/images/voucher.jpg"),
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 100,
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: BlocBuilder<BasketBloc, BasketState>(
                    builder: (context, state) {
                      if (state is BasketLoading) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is BasketLoaded) {
                        return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'subtotal',
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                  Text(
                                    'Rs.${state.basket.subtotalString}',
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Delivery Fee',
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                  Text(
                                    'Rs.49',
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                  ),
                                  Text(
                                    'Rs.${state.basket.totalString}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                  ),
                                ],
                              ),
                            ]);
                      } else {
                        return Text('Something went wrong');
                      }
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
