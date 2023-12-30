import 'package:flutter/material.dart';

class OrderConfirmed extends StatelessWidget {
  const OrderConfirmed({Key? key}) : super(key: key);
  static const String routeName = '/order_confirm';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => OrderConfirmed(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 120.0,
            child: Icon(Icons.done_outlined,size: 120,),

          ),
          SizedBox(height: 80,),

          Text("Order Placed!",style: Theme.of(context).textTheme.headline1)
        ],
      ),



    );
  }
}
