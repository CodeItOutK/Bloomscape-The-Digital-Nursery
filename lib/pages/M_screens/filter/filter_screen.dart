// // import 'dart:html';
//
// import 'package:flutter/material.dart';
//
// class FilterScreen extends StatelessWidget {
//   static const String routeName = '/filter';
//
//   static Route() {
//     return MaterialPageRoute(
//       builder: (_) => FilterScreen(),
//       settings: RouteSettings(name: routeName),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Filter'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Location Screen'),
//           onPressed: () {
//             Navigator.pushNamed(context, ' /Location');
//           },
//         ),
//       ),
//     );
//   }
// }
