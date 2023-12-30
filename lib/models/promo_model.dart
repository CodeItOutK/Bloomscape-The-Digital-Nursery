import 'package:equatable/equatable.dart';

class Promo extends Equatable{
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  Promo({required this.id,required this.title,required this.description,required this.imageUrl});

  List<Object> get props =>[
    id,title,description,imageUrl
  ];

  static List<Promo>promos = [
    Promo(id:1,
        title: '',
        description: '',
        imageUrl: 'assets/images/Promotions/add4.jpg'
    ),

    Promo(id:2,
        title: 'FREE Delivery On Your First Three Orders',
        description: '',
        imageUrl: 'assets/images/Promotions/add2.jpg'
    ),

    Promo(id:3,
        title: '',
        description: '',
        imageUrl: 'assets/images/Promotions/add1.jpg'
    )
  ];
}