// import 'package:bloomscape/blocs/filters/filters_bloc.dart';
// import 'package:bloomscape/extras/filters/filters_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../blocs/filters/filters_bloc.dart';
// import '../blocs/filters/filters_event.dart';
// import '../blocs/filters/filters_state.dart';
// import '../models/price_model.dart';
// //import 'package:flutter/src/widgets/framework.dart';
//
// class CustomPriceFilter extends StatelessWidget {
//   final List<Price> prices;
//   const CustomPriceFilter({
//     Key? key, required this.prices,
//     // required this.prices,
//   }) : super(key:key);
//
//   @override
//   Widget build(BuildContext context){
//
//     return BlocBuilder<FiltersBloc, FiltersState>(
//       builder:(context,state) {
//         if (state is FiltersLoading) {
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//         if (state is FiltersLoaded) {
//           return Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: state.filter.priceFilters
//                   .asMap()
//                   .entries
//                   .map(
//                     (price) =>
//                     InkWell(
//                       onTap: () {
//                         context.read<FiltersBloc>().add(
//                           PriceFilterUpdated(
//                             priceFilter: state.filter.priceFilters[price.key].
//                             copyWith(
//                               value: !state.filter.
//                               priceFilters[price.key].value,),
//                           ),
//                         );
//                       },
//
//                       child: Container(
//                         margin: const EdgeInsets.only(
//                           top: 10,
//                           bottom: 10,
//                         ),
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 40,
//                           vertical: 10,),
//                         decoration: BoxDecoration(
//                           color: state.filter.priceFilters[price.key].value
//                           // ? Colors.white
//                               ? Theme
//                               .of(context)
//                               .primaryColor
//                               .withAlpha(100)
//                               : Colors.white,
//                           borderRadius: BorderRadius.circular(5),
//                         ),
//                         child: Text(
//                           state.filter.priceFilters[price.key].price.price,
//                           style: Theme
//                               .of(context)
//                               .textTheme
//                               .headline5,
//                         ),
//                       ),
//                     ),
//
//               )
//                   .toList()
//           );
//         }
//         else {
//           return Text('Something Went wrong.');
//         }
//       }
//     );
//   }
//
//
// }
