// import 'dart:async';
// import 'package:bloomscape/H_lib/lib/blocs/filters/filters_event.dart';
// import 'package:bloomscape/H_lib/lib/blocs/filters/filters_event.dart';
// import 'package:bloomscape/blocs/nursery/nursery_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:bloomscape/models/price_filter_model.dart';
// import 'package:bloomscape/H_lib/lib/models/price_model.dart';
// import '../../../../models/nursery_model.dart';
// import '../../../../models/transferred_models/category_model.dart';
// import '../../models/category_filter_model.dart';
// import '../../models/category_filter_model.dart';
// import '../../models/category_filter_model.dart';
// import '../../models/models.dart';
// // import 'filters_event.dart';
// // import 'filters_event.dart';
// // import 'filters_event.dart';
// import 'filters_state.dart';
//
//
//
// // class FiltersBloc extends Bloc<FiltersEvent,FiltersState>{
// //   FiltersBloc({required NurseryBloc NurseryBloc}) : super(FiltersLoading());
// //
// //   @override
// //   Stream<FiltersState>mapEventToState(
// //       FiltersEvent event,
// //       ) async* {
// //     if(event is FilterLoad) {
// //       yield* _mapFilterLoadToState();
// //     }
// //     if(event is CategoryFilterUpdated){
// //       yield* _mapCategoryFilterUpdatedToState(event,state);
// //     }
// //     if(event is PriceFilterUpdated){
// //       yield* _mapPriceFilterUpdatedToState(event,state);
// //     }
// //   }
// //   Stream<FiltersState> _mapFilterLoadToState() async*{
// //     yield FiltersLoaded(
// //         filter: Filter(
// //           categoryFilters: CategoryFilter.filters,
// //           priceFilters: PriceFilter.filters,
// //         )
// //     );
// //   }
// //   Stream<FiltersState> _mapCategoryFilterUpdatedToState(
// //       CategoryFilterUpdated event,
// //       FiltersState state,
// //       ) async*{
// //     if(state is FiltersLoaded) {
// //       final List<CategoryFilter> updatedCategoryFilters =
// //       state.filter.categoryFilters.map((categoryFilter){
// //         return categoryFilter.id == event.categoryFilter.id
// //             ? event.categoryFilter
// //             : categoryFilter;
// //       }).toList();
// //
// //       yield FiltersLoaded(
// //           filter: Filter(
// //             categoryFilters: updatedCategoryFilters,
// //             priceFilters: state.filter.priceFilters,
// //           )
// //       );
// //     }
// //   }
// //   Stream<FiltersState> _mapPriceFilterUpdatedToState(
// //       PriceFilterUpdated event,
// //       FiltersState state,
// //       ) async*{
// //     if(state is FiltersLoaded) {
// //       final List<PriceFilter> updatedPriceFilters =
// //       state.filter.priceFilters.map((priceFilter){
// //         return priceFilter.id == event.priceFilter.id
// //             ? event.priceFilter
// //             : priceFilter;
// //       }).toList();
// //
// //       yield FiltersLoaded(
// //           filter: Filter(
// //             categoryFilters: state.filter.categoryFilters,
// //             priceFilters: updatedPriceFilters,
// //
// //           )
// //       );
// //     }
// //   }
// // }
//
// //code of source code
// //
// class FilterBloc extends Bloc<FiltersEvent, FiltersState> {
//   final NurseryBloc _nurseriesBloc;
//
//   FilterBloc({required NurseryBloc nurseriesBloc})
//       : _nurseriesBloc = nurseriesBloc,
//         super(FiltersLoading()) {
//     on<LoadFilter>(_onLoadFilter);
//     on<UpdateCategoryFilter>(_onUpdateCategoryFilter);
//     on<UpdatePriceFilter>(_onUpdatePriceFilter);
//   }
//
//   void _onLoadFilter(
//       FilterLoad event,
//       Emitter<FiltersState> emit,
//       ) async {
//     emit(
//       FiltersLoaded(
//         filter: Filter(
//           categoryFilters: CategoryFilter.filters,
//           priceFilters: PriceFilter.filters,
//         ),
//
//       ),
//     );
//   }
//
//   void _onUpdateCategoryFilter(
//       UpdateCategoryFilter event,
//       Emitter<FiltersState> emit,
//       ) async {
//     final state = this.state;
//
//     if (state is FiltersLoaded) {
//       final List updatedCategoryFilters =
//       state.filter.categoryFilters.map((categoryFilter) {
//         return categoryFilter.id == event.CategoryFilter.id
//             ? event.CategoryFilter
//             : categoryFilter;
//       }).toList();
//
//       var categories = updatedCategoryFilters
//           .where((filter) => filter.value)
//           .map((filter) => filter.category)
//           .toList();
//
//       var prices = state.filter.priceFilters
//           .where((filter) => filter.value)
//           .map((filter) => filter.price.price)
//           .toList();
//
//       List<Nursery> filteredRestaurants = _getFilteredNurseries(
//         categories,
//         prices,
//       );
//
//       emit(
//         FiltersLoaded(
//           filter: Filter(
//             categoryFilters: updatedCategoryFilters,
//             priceFilters: state.filter.priceFilters,
//           ),
//           filteredNurseries: filteredNurseries,
//
//         ),
//       );
//     }
//   }
//
//   void _onUpdatePriceFilter(
//       UpdatePriceFilter event,
//       Emitter<FiltersState> emit,
//       ) async {
//     final state = this.state;
//
//     if (state is FiltersLoaded) {
//       final List updatedPriceFilters =
//       state.filter.priceFilters.map((priceFilter) {
//         return priceFilter.id == event.priceFilter.id
//             ? event.priceFilter
//             : priceFilter;
//       }).toList();
//
//       var categories = state.filter.categoryFilters
//           .where((filter) => filter.value)
//           .map((filter) => filter.category)
//           .toList();
//
//       var prices = updatedPriceFilters
//           .where((filter) => filter.value)
//           .map((filter) => filter.price.price)
//           .toList();
//
//       List<Nursery> filteredRestaurants = _getFilteredNurseries(
//         categories,
//         prices,
//       );
//
//       emit(
//         FiltersLoaded(
//           filter: Filter(
//             categoryFilters: state.filter.categoryFilters,
//             priceFilters: updatedPriceFilters,
//           ),
//           filteredNurseries: filteredNurseries,
//
//         ),
//       );
//     }
//   }
//
//   List<Nursery> _getFilteredRestaurants(
//       List<Category> categories,
//       List<String> prices,
//       ) {
//     return (_nurseriesBloc.state as NurseryLoaded)
//         .nurseries
//         .where(
//           (Nursery) => categories.any(
//             (category) => Nursery.categories.contains(category),
//       ),
//     )
//         .where(
//           (nursery) => prices.any(
//             (price) => nursery.priceCategory.contains(price),
//       ),
//     )
//         .toList();
//   }
//
// }
//
// class UpdateCategoryFilter {
// }
//
//
//
//
//
// //comment out code of youtube