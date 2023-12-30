// import 'package:bloomscape/blocs/filters/filters_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../models/transferred_models/category_model.dart';
// import '../blocs/filters/filters_bloc.dart';
// import '../blocs/filters/filters_event.dart';
// import '../blocs/filters/filters_state.dart';
// import '../models/Category_model.dart';
//
// class CustomCategoryFilter extends StatelessWidget {
//    final List<Category> categories;
//   const CustomCategoryFilter({
//     Key? key,
//       required this.categories,
//   }) : super (key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<FiltersBloc,FiltersState>(
//       builder:(context,state){
//         if(state is FiltersLoading){
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//         }
//         if(state is FiltersLoaded){
//           return ListView.builder(
//               shrinkWrap: true,
//               itemCount: state.filter.categoryFilters.length,
//               itemBuilder: (context,index){
//                 return Container(width: double.infinity,
//                   margin: const EdgeInsets.only(top: 10),
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 30,
//                     vertical: 10,
//                   ),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(5.0)
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         // categories[index].name,
//                         state.filter.categoryFilters[index].category.name,
//                         style: Theme.of(context).textTheme.headline5,
//                       ),
//                       SizedBox(
//                         height: 25,
//                         child: Checkbox(
//                           value: state.filter.categoryFilters[index].value,
//                           onChanged: (bool? newValue){
//                             context.read<FiltersBloc>().add(
//                             CategoryFilterUpdated(
//                             categoryFilter:state
//                             .filter.categoryFilters[index]
//                             .copyWith(
//                             value: !state.filter.
//                             categoryFilters[index].value)
//                    )
//                    );
//                         },
//                         ),
//                       )
//                     ],
//                   ),
//                 );
//               });
//         }
//         else{
//           return Text('Something Went Wrong.');
//         }
//       }
//     );
//   }
// }
