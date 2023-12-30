

import 'package:bloomscape/payment_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay/pay.dart';

class CheckoutScreen extends StatefulWidget {
  static const String routeName = '/checkout';

  static Route() {
    return MaterialPageRoute(
      builder: (_) => CheckoutScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  var googlePayButton = GooglePayButton(
    paymentConfiguration: PaymentConfiguration.fromJsonString(defaultGooglePay),
    paymentItems: const [
      PaymentItem(
        label: 'Total',
        amount: '0.01',
        status: PaymentItemStatus.final_price,
      ),
    ],
    width: double.infinity,
    type: GooglePayButtonType.pay,
    margin: const EdgeInsets.only(top: 15.0),
    onPaymentResult: (result) => debugPrint('Payment result $result'),
    loadingIndicator: const Center(
      child: CircularProgressIndicator(
        
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                googlePayButton,
                CupertinoButton(
                    onPressed:(){
                      Navigator.pushReplacementNamed(context, '/order_confirm');
                    },
                    child: Image(image: AssetImage('assets/images/buy-with-gpay.png',),height: 90,)),
                SizedBox(height: 20,),
                CupertinoButton(
                    onPressed:(){
                      Navigator.pushReplacementNamed(context, '/order_confirm');
                    },
                    child: Image(image: AssetImage('assets/images/cash-on-delivery.jpg'),height: 110,)),
              ],
            ),
          ),
        ));
  }
}

















// // import 'dart:html';
//
// import 'package:flutter/material.dart';
//
// class CheckoutScreen extends StatelessWidget {
//   static const String routeName = '/checkout';
//
//   static Route() {
//     return MaterialPageRoute(
//       builder: (_) => CheckoutScreen(),
//       settings: RouteSettings(name: routeName),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Checkout'),
//
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Confirm Order'),
//           onPressed: () {
//             Navigator.pushNamed(context, ' /order-confirm');
//           },
//         ),
//       ),
//     );
//   }
// }
