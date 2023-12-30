import 'package:equatable/equatable.dart';

class Products extends Equatable{
  final int id;
  final int NurseryId;
  final String name;
  final String description;
  final double price;

  Products({required this.id,required this.NurseryId,required this.name,required this.description,required this.price});

  @override
  // TODO: implement props
  List<Object?> get props => [id,NurseryId,name,description,price];

  static List<Products> products = [
    Products(id: 1, NurseryId: 1, name: 'Hangings', description: "Perfect for decorating your home balconies with these natures's elegant drapes, suspended in mid air", price: 250),
    Products(id: 2, NurseryId: 1, name: 'Show Plants', description: "elevate your space or gift your close ones exquisite show plants", price: 350),
  ];
}