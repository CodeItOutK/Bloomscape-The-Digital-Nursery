import 'dart:ui';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
class CategoryOg extends Equatable{
  final int id;
  final String name;
  final Image image;

  CategoryOg({required this.id,required this.name,required this.image});

  @override
  // TODO: implement props
  List<Object?> get props => [id,name,image];

  static List<CategoryOg> categories = [
    CategoryOg(id: 1, name: 'Hangings', image: Image.asset('assets/images/plant_categories/Balcony_hanging_plants.jpg')
    ),
    CategoryOg(id: 2, name: 'Show Plants', image: Image.asset('assets/images/plant_categories/show_plants.jpg')
    ),
    CategoryOg(id: 3, name: 'Climbers/Bel', image: Image.asset('assets/images/plant_categories/Indian_bel.jpg')
    ),
    CategoryOg(id: 4, name: 'Fruits', image: Image.asset('assets/images/plant_categories/fruits.jpg')
    ),
    CategoryOg(id: 5, name: 'Herbs', image: Image.asset('assets/images/plant_categories/herbs.jpg')
    ),
    CategoryOg(id: 6, name: 'Flowering Plants', image: Image.asset('assets/images/plant_categories/Flowering_plants.jpg')
    ),
    CategoryOg(id: 7, name: 'Vegetable Plants', image: Image.asset('assets/images/plant_categories/vegetables.jpg')
    ),
    CategoryOg(id: 8, name: 'Aquatic Plants', image: Image.asset('assets/images/plant_categories/aquatic_plants.jpg')

    ),
    CategoryOg(id: 9, name: 'Bonsai Plants', image: Image.asset('assets/images/diff_plants/bonsai/bodhi_tree.jpg')
    )
  ];
}