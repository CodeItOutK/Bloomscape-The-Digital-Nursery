// import 'package:bloomscape/blocs/filters/filters_bloc.dart';
// import 'package:bloomscape/blocs/filters/filters_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../widgets/custom_category_filter.dart';
// import '../widgets/custom_price_filter.dart';
//
//
// class FilterScreen extends StatelessWidget{
//   static const String routeName = '/filters';
//
//   static Route route(){
//     return MaterialPageRoute(
//       builder: (_) => FilterScreen(),
//       settings: RouteSettings(name: routeName),
//     );
//   }
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(title: Text('Filter')),
//       bottomNavigationBar: BottomAppBar(
//         child: Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               BlocBuilder<FiltersBloc, FiltersState>(
//                   builder: (context, state){
//                     if(state is FiltersLoading){
//                       return Center(
//                         child: CircularProgressIndicator(),
//                       );
//                     }
//                     if(state is FiltersLoaded){
//                       return ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(horizontal: 50),
//                           shape: RoundedRectangleBorder(),
//                           primary: Theme.of(context).colorScheme.secondary,
//                         ),
//                         child: Text('Apply'),
//                         onPressed: () {
//                           // var categories = state.filter.categoryFilters
//                           //     .where((filter) => filter.value )
//                           //     .map((filter) => filter.category.name)
//                           //     .toList();
//                           //
//                           // var prices = state.filter.priceFilters
//                           //     .where((filter) => filter.value )
//                           //     .map((filter) => filter.price.price)
//                           //     .toList();
//                           //
//                           //
//                           // List<Nursery> nurseries = Nursery.nurseries
//                           //     .where(
//                           //       (nursery) => categories.any(
//                           //         (category) =>nursery.tags.contains(category),
//                           // ),
//                           // );
//                           // where(
//                           //       (nursery) => prices.any(
//                           //         (price) =>nursery.priceCategory.contains(price),
//                           //   ),
//                           // )
//                           // .toList();
//                           print(state.filteredNurseries);
//                           Navigator.pushNamed(
//                             context,
//                             '/nursery-listing',
//                             arguments: state.filteredNurseries,
//                           );
//                           // print(categories);
//                         },
//                       );
//                     }
//                     else{
//                       return Text('Something went wrong.');
//                     }
//                   }
//               ),
//             ],
//           ),),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20,),
//         child:Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//                 'Price',
//                 style: Theme.of(context).textTheme.headline4!.copyWith(
//                   color: Theme.of(context).colorScheme.secondary,
//                 )
//             ),
//
//             CustomPriceFilter(prices: [],),
//             Text(
//                 'Category',
//                 style: Theme.of(context).textTheme.headline4!.copyWith(
//                   color: Theme.of(context).colorScheme.secondary,
//                 )
//             ),
//             CustomCategoryFilter()
//           ],
//
//
//         ),
//       ),
//
//     );
//   }
// }
// // class CustomCategoryFilter extends StatelessWidget {
// //   final List<Category> categories;
// //   const CustomCategoryFilter({
// //     Key? key,required categories,
// //   }) : super (key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.builder(
// //         shrinkWrap: true,
// //         itemCount: categories.length,
// //         itemBuilder: (context,index){
// //           return Container(width: double.infinity,
// //             margin: const EdgeInsets.only(top: 10),
// //             padding: const EdgeInsets.symmetric(
// //               horizontal: 30,
// //               vertical: 10,
// //             ),
// //             decoration: BoxDecoration(
// //                 color: Colors.white,
// //                 borderRadius: BorderRadius.circular(5.0)
// //             ),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Text(categories[index].name,
// //                   style: Theme.of(context).textTheme.headline5,
// //                 ),
// //                 SizedBox(
// //                   height: 25,
// //                   child: Checkbox(
// //                     value: false,
// //                     onChanged: (bool? newValue){},
// //                   ),)
// //               ],
// //             ),
// //
// //           );
// //         });
// //   }
// // }
// //
// // class CustomPriceFilter extends StatelessWidget {
// //   final List<Price> prices;
// //   const CustomPriceFilter({
// //     Key? key,
// //     required this.prices,
// //   }); : super(key:key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //   return Row(
// //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //   children:prices
// //       .map(
// //   (price) =>InkWell(
// //   onTap: () {},
// //   );
// //   Container(
// //   margin: const EdgeInsets.only(
// //   top: 10,
// //   bottom: 10,
// //   ) ,
// //   padding: const EdgeInsets.symmetric(
// //   horizontal: 40,
// //   vertical: 10, ),
// //   decoration: BoxDecoration(
// //   color: Colors.white,
// //   borderRadius: BorderRadius .circular(5),
// //   ),
// //   child: Text(price.price,
// //   style: Theme.of(context).textTheme.headline5,
// //   ),
// //   ))
// //       .toList()
// //   );
// //   }
// //
// //
// // }
//
//
//
//
//
