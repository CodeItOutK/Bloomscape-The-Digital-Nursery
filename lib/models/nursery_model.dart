import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'models.dart';
class Nursery extends Equatable{
  final String id;
  final String imageUrl;
  final String name;
  final String description;
  final List<Category>categories;
  final List<OpeningHours>openingHours;
  final List<String>tags;
  final List<Product> products;
  final int deliveryTime;
  final double deliveryFee;
  final double distance;
  final String priceCategory;

  Nursery({
    required this.openingHours,required this.categories,
    required this.id,required this.description, required this.imageUrl,
    required this.name,required this.tags,required this.products
    ,this.deliveryTime=10,this.deliveryFee=10,this.distance=15,this.priceCategory='\Rs'});

  factory Nursery.fromSnapshot(DocumentSnapshot snap){
    return Nursery(
      id:snap.id,name: snap['name'], imageUrl: snap['imageUrl'], description: snap['description'],
      tags:(snap['tags'] as List).map((tag){
        return tag as String;
      }).toList(),
      categories:(snap['categories'] as List).map((category){
        return Category.fromSnapshot(category);
      }).toList(),
      products: (snap['products'] as List).map((product){
        return Product.fromSnapshot(product);
      }).toList(),
      openingHours: (snap['openingHours'] as List).map((openingHour){
        return OpeningHours.fromSnapshot(openingHour);
      }).toList(),
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id,description,categories,openingHours,products,priceCategory,imageUrl,name,tags,deliveryTime,deliveryFee,distance];

  static List<Nursery> nurseries =[];


  // static List<Nursery> nurseries = [
  //   Nursery(id: 1,
  //       imageUrl: 'assets/images/Nursery_images/shop1.jpg',
  //       name: 'Green Wood',
  //       // tags: ['Show Plants', 'Hangings','Bonsai plants'],
  //       tags:Product.products.where((product) => product.nurseryId==1).map((product) => product.category).toSet().toList(),
  //       deliveryTime: 30,
  //       deliveryFee: 2.99,
  //       distance: 0.1,
  //     description: "Welcome to GreenWood Nursery – where green dreams come to life! Explore a curated selection of thriving plants, perfect for any space. Whether you're a gardening pro or just starting out, our knowledgeable team is here to assist you. Transform your surroundings with the timeless beauty of GreenWood.",
  //     // products: Products.products.where((product) => product.nurseryId==1).map((product) => product.category).toSet().toList(),
  //       products: Product.products.where((product) => product.nurseryId==1).toList(),
  //   ),
  //   Nursery(id: 2,
  //       imageUrl: 'assets/images/Nursery_images/shop2.jpg',
  //       name: 'Saundarya',
  //       tags:Product.products.where((product) => product.nurseryId==2).map((product) => product.category).toSet().toList(),
  //       // tags: ['Flowering Plants', 'Herbs','Hangings'],
  //       deliveryTime: 20,
  //       deliveryFee: 1.99,
  //       distance: 0.06,
  //       description: "Welcome to Saundarya Nursery, where beauty meets botany! Explore a world of enchanting flora curated to add grace to your surroundings. Immerse yourself in a symphony of colors and scents, carefully nurtured for your aesthetic delight.",
  //       products: Product.products.where((product) => product.nurseryId==2).toList(),
  //   ),
  //   Nursery(id: 3,
  //       imageUrl: 'assets/images/Nursery_images/garden_shop.jpg',
  //       name: 'The Garden Shop',
  //       tags:Product.products.where((product) => product.nurseryId==3).map((product) => product.category).toSet().toList(),
  //       // tags: ['Show Plants', 'Hangings','Aquatic plants'],
  //       deliveryTime: 40,
  //       deliveryFee: 3.59,
  //       distance: 0.25,
  //     description: "Step into The Garden Shop, your one-stop destination for all things green. Unearth a curated selection of plants that transform your garden into a paradise. From classic favorites to trendy newcomers, our collection caters to every gardening style.",
  //       products: Product.products.where((product) => product.nurseryId==3).toList(),
  //   ),
  //   Nursery(id: 4,
  //       imageUrl: 'assets/images/Nursery_images/shop4.jpg',
  //       name: 'Sanjeevani',
  //       tags:Product.products.where((product) => product.nurseryId==4).map((product) => product.category).toSet().toList(),
  //       // tags: ['Herbs', 'Hangings','Climbers'],
  //       deliveryTime: 10,
  //       deliveryFee: 1.29,
  //       distance: 0.08,
  //       description: "At Sanjeevani Nursery, discover the healing power of nature. Our diverse range of plants is not just visually appealing but also nurtures well-being. Let the green embrace of Sanjeevani transform your space into a sanctuary of health and vitality.",
  //       products: Product.products.where((product) => product.nurseryId==4).toList(),
  //   ),
  //   Nursery(id: 5,
  //       imageUrl: 'assets/images/Nursery_images/shop5.jpg',
  //       name: 'Nachiket',
  //       tags:Product.products.where((product) => product.nurseryId==5).map((product) => product.category).toSet().toList(),
  //       // tags: ['Bonsai Plants', 'Fruits','Vegetable plants'],
  //       deliveryTime: 50,
  //       deliveryFee: 4.99,
  //       distance: 2.8,
  //       description: "Welcome to Nachiket Nursery, where every plant tells a story. Our carefully chosen selection reflects a passion for unique and meaningful greenery. From exotic specimens to familiar favorites, find the perfect narrative for your garden at Nachiket.",
  //       products: Product.products.where((product) => product.nurseryId==5).toList(),
  //   ),
  //   Nursery(id: 6,
  //       imageUrl: 'assets/images/Nursery_images/shop6.jpg',
  //       name: 'Flora Fusion',
  //       tags:Product.products.where((product) => product.nurseryId==6).map((product) => product.category).toSet().toList(),
  //       // tags: ['Show Plants', 'Flowering Plants','Bonsai plants'],
  //       deliveryTime: 35,
  //       deliveryFee: 3.02,
  //       distance: 0.12,
  //       description: "Immerse yourself in the vibrant blend of nature at Flora Fusion. Our nursery celebrates the fusion of colors, textures, and forms. Elevate your gardening experience with our diverse collection, where each plant is a masterpiece waiting to be part of your botanical canvas.",
  //       products: Product.products.where((product) => product.nurseryId==6).toList(),
  //   ),
  // ];
}