
//same as categories_og.dart

// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
//
// class Category extends Equatable{
//   final int id;
//   final String name;
//   final Image image;
//
//   Category({required this.id,required this.name,required this.image});
//
//   @override
//   // TODO: implement props
//   List<Object?> get props => [id,name,image];
//
//   static List<Category> categories = [
//     Category(id: 1, name: 'Hanging Plants', image: Image.asset('assets/images/plant_categories/Balcony_hanging_plants.jpg')
//     ),
//     Category(id: 2, name: 'Show Plants', image: Image.asset('assets/images/plant_categories/show_plants.jpg')
//     ),
//     Category(id: 3, name: 'Climbers', image: Image.asset('assets/images/plant_categories/Indian_bel.jpg')
//     ),
//     Category(id: 4, name: 'Fruits', image: Image.asset('assets/images/plant_categories/fruits.jpg')
//     ),
//     Category(id: 5, name: 'Herbs', image: Image.asset('assets/images/plant_categories/herbs.jpg')
//     ),
//     Category(id: 6, name: 'Flowering Plants', image: Image.asset('assets/images/plant_categories/Flowering_plants.jpg')
//     ),
//     Category(id: 7, name: 'Vegetables', image: Image.asset('assets/images/plant_categories/vegetables.jpg')
//     ),
//     Category(id: 8, name: 'Aquatic Plants', image: Image.asset('assets/images/plant_categories/aquatic_plants.jpg')
//     )
//   ];
// }
//
// // class CategoryFilter extends Equatable{
// //   final int id;
// //   final Category category;
// //   final bool value;
// //
// //   CategoryFilter({
// //     required this.id,
// //     required this.category,
// //     required this.value});
// //
// //   CategoryFilter copyWith({
// //     int? id,
// //     Category? category,
// //     bool? value,
// //   })  {
// //     return CategoryFilter(
// //         id:id ?? this.id,
// //         category:category ?? this.category,
// //         value:value ?? this.value);
// //   }
// //   @override
// //   //  TODO: implement props
// //   List<Object?> get props => [
// //     id,
// //     category,
// //     value];
// //
// //   static List<CategoryFilter> filters =
// //   Category.categories.map((category) => CategoryFilter(
// //     id:  category.id,
// //     category: category,
// //     value: false,
// //   ))
// //       .toList();
// // }