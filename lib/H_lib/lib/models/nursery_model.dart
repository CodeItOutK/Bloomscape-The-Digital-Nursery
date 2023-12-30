// import 'package:equatable/equatable.dart';
// import 'models.dart';
// class Nursery extends Equatable{
//   final int id;
//   final String imageUrl;
//   final String name;
//   final List<String>tags;
//   final List<Products> products;
//   final int deliveryTime;
//   final String priceCategory;
//   final double deliveryFee;
//   final double distance;
//
//   Nursery({required this.id,required this.imageUrl,required this.name,required this.tags,required this.products,required this.deliveryTime,required this.priceCategory,required this.deliveryFee,required this.distance});
//
//   @override
//   // TODO: implement props
//   List<Object?> get props => [id,imageUrl,name,tags,deliveryTime,priceCategory,deliveryFee,distance];
//
//   static List<Nursery> nurseries = [
//     Nursery(id: 1,
//       imageUrl: 'assets/images/Nursery_images/shop1.jpg',
//       name: 'Green Wood',
//       tags: ['Show Plants', 'Hangings','Bonsai plants'],
//       deliveryTime: 30,
//       priceCategory: '\$',
//       deliveryFee: 2.99,
//       distance: 0.1,
//       products: Products.products.where((product) => product.NurseryId==1).toList(),
//     ),
//     Nursery(id: 2,
//       imageUrl: 'assets/images/Nursery_images/shop2.jpg',
//       name: 'Saundarya',
//       tags: ['Flowering Plants', 'Herbs','Hangings'],
//       deliveryTime: 20,
//       priceCategory: '\$',
//       deliveryFee: 1.99,
//       distance: 0.06,
//       products: Products.products.where((product) => product.NurseryId==2).toList(),
//     ),
//     Nursery(id: 3,
//       imageUrl: 'assets/images/Nursery_images/garden_shop.jpg',
//       name: 'The Garden Shop',
//       tags: ['Show Plants', 'Hangings','Aquatic plants'],
//       deliveryTime: 40,
//       priceCategory: '\$',
//       deliveryFee: 3.59,
//       distance: 0.25,
//       products: Products.products.where((product) => product.NurseryId==3).toList(),
//     ),
//     Nursery(id: 4,
//       imageUrl: 'assets/images/Nursery_images/shop4.jpg',
//       name: 'Sanjeevani',
//       tags: ['Herbs', 'Hangings','Climbers'],
//       deliveryTime: 10,
//       priceCategory: '\$',
//       deliveryFee: 1.29,
//       distance: 0.08,
//       products: Products.products.where((product) => product.NurseryId==4).toList(),
//     ),
//     Nursery(id: 5,
//       imageUrl: 'assets/images/Nursery_images/shop5.jpg',
//       name: 'Nachiket',
//       tags: ['Bonsai Plants', 'Fruits','Vegetable plants'],
//       deliveryTime: 50,
//       priceCategory: '\$',
//       deliveryFee: 4.99,
//       distance: 2.8,
//       products: Products.products.where((product) => product.NurseryId==5).toList(),
//     ),
//     Nursery(id: 6,
//       imageUrl: 'assets/images/Nursery_images/shop6.jpg',
//       name: 'Flora Fusion',
//       tags: ['Show Plants', 'Flowering Plants','Bonsai plants'],
//       deliveryTime: 35,
//       priceCategory: '\$',
//       deliveryFee: 3.02,
//       distance: 0.12,
//       products: Products.products.where((product) => product.NurseryId==6).toList(),
//     ),
//   ];
// }