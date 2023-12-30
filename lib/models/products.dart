// import 'package:equatable/equatable.dart';
//
// class Products extends Equatable{
//   final int id;
//   final int NurseryId;
//   final String name;
//   final String category;
//   final String description;
//   final double price;
//
//   Products( {required this.category,required this.id,required this.NurseryId,required this.name,required this.description,required this.price});
//
//   @override
//   // TODO: implement props
//   List<Object?> get props => [id,NurseryId,name,description,price];
//
//   static List<Products> products = [
//     Products(id: 1, NurseryId: 1,name:"Begonia", category: 'Hangings', description: "Perfect for decorating your home balconies with these natures's elegant flowering drapes, suspended in mid air", price: 250),
//     Products(id: 2, NurseryId: 4,name:"Pothos", category: 'Hangings', description: "Heart shaped leaves with random yellow splashes", price: 250),
//     Products(id: 3, NurseryId: 2,name:"Boston Fern", category: 'Hangings', description: "Tiny leaflets slightly serrated with undulating edges suspended in mid air", price: 250),
//     Products(id: 4, NurseryId: 5,name:"Peperomia", category: 'Hangings', description: "Leaves are glossy,oval shaped,colors ranging from green to pink", price: 250),
//     Products(id: 5, NurseryId: 3,name:"Money Plant", category: 'Show Plants', description: "Elevate your space with harmonious environment and bring in prosperity", price: 350),
//     Products(id: 6, NurseryId: 5,name:"Lucky Bamboo Plant", category: 'Show Plants', description: "Decorative and can be grown in clear water or soil", price: 350),
//     Products(id: 7, NurseryId: 6,name:"Peace Lily", category: 'Show Plants', description: "aesthetically appealing, improves air quality & require little to no sunlight", price: 350),
//     Products(id: 8, NurseryId: 2,name:"Aloe Vera", category: 'Show Plants', description: "The miracle plant which caters health, beauty and your home decor all at once", price: 350),
//     Products(id: 9, NurseryId: 3,name:"Bodhi tree", category: 'Bonsai Plants', description: "Aerial roots providing excellent sight with heart shaped shiny leaves", price: 350),
//     Products(id: 10, NurseryId: 4,name:"Jade", category: 'Bonsai Plants', description: "With thick and fleshy stems and leaves,requires minimal efforts to maintain nice growth", price: 350),
//     Products(id: 11, NurseryId: 1,name:"Bouganvillea", category: 'Bonsai Plants', description: "Adding vivacious colors to your interiors,with min 5-6 hours of bright sunlight to grow well", price: 350),
//   ////
//     Products(id: 12, NurseryId: 4,name:"Roses", category: 'Flowering Plants', description: "Unveil romance in your garden with Velvet Roses – a timeless blend of elegance and fragrance.", price: 250),
//     Products(id: 13, NurseryId: 1,name:"Marigolds", category: 'Flowering Plants', description: "Illuminate your garden with the vibrant hues of Golden Marigolds. These cheerful blooms bring a burst of sunshine and festive warmth to any space, turning your outdoor haven into a lively celebration of color.", price: 250),
//     Products(id: 14, NurseryId: 4,name:"Mogra", category: 'Flowering Plants', description: "Immerse your senses in the enchanting aroma of Mogra. These delicate and fragrant blooms, also known as Jasmine, add a touch of timeless elegance to your garden, creating an atmosphere of serenity and charm.", price: 250),
//     Products(id: 15, NurseryId: 2,name:"Parijat", category: 'Flowering Plants', description: "Experience regal beauty with Parijat Majesty. These exquisite flowers, also known as 'Night Blooming Jasmine', grace your garden with fragrant, star-like blossoms that bloom at dusk, creating an enchanting atmosphere under the moonlit sky.", price: 250),
//     Products(id: 16, NurseryId: 3,name:"Hibiscus", category: 'Flowering Plants', description: "Elevate your garden with the vibrant allure of Crimson Hibiscus. These bold, tropical blooms in shades of red and pink bring a burst of color and exotic beauty to your outdoor oasis.", price: 250),
//     Products(id: 17, NurseryId: 6,name:"Roses", category: 'Flowering Plants', description: "Unveil romance in your garden with Velvet Roses – a timeless blend of elegance and fragrance.", price: 250),
//     Products(id: 18, NurseryId: 1,name:"RaatRani", category: 'Flowering Plants', description: "Adorn your garden with the nocturnal beauty of Raatrani. These fragrant blossoms bloom in the evening, filling the air with a mesmerizing scent and adding an enchanting touch to your outdoor retreat.", price: 250),
//     Products(id: 19, NurseryId: 6,name:"Sunflowers", category: 'Flowering Plants', description: "Bring the warmth of sunshine to your garden with Sunburst Sunflowers. These iconic blooms, with their golden petals and cheerful demeanor, add a radiant and uplifting touch to any outdoor space.", price: 250),
//     Products(id: 12, NurseryId: 4,name:"Roses", category: 'Flowering Plants', description: "Unveil romance in your garden with Velvet Roses – a timeless blend of elegance and fragrance.", price: 250),
// //
//     Products(id: 13, NurseryId: 1,name:"Tomatoes", category: 'Vegetable Plants', description: "Cultivate the classic favorite for versatile use in salads, sauces, and snacks.", price: 450),
//     Products(id: 14, NurseryId: 2,name:"Chilli", category: 'Vegetable Plants', description: "Spice up your garden and meals with these vibrant and flavorful chilli plants.", price: 450),
//     Products(id: 15, NurseryId: 3,name:"Curry Leaf", category: 'Vegetable Plants', description: "Enhance the aroma and taste of your dishes with fresh, homegrown curry leaves.", price: 450),
//     Products(id: 16, NurseryId: 1,name:"Spinach", category: 'Vegetable Plants', description: "Boost your nutrition with these leafy green spinach plants, perfect for salads and cooking.", price: 450),
//     Products(id: 18, NurseryId: 2,name:"Ginger", category: 'Vegetable Plants', description: "dd a zesty touch to your culinary creations by cultivating your own fresh ginger.", price: 450),
//     Products(id: 19, NurseryId: 5,name:"Cucumber", category: 'Vegetable Plants', description: "Enjoy a refreshing crunch with homegrown cucumbers, ideal for salads and snacking", price: 450),
//     Products(id: 20, NurseryId: 6,name:"Brinjal", category: 'Vegetable Plants', description: "Harvest plump and flavorful brinjals to complement your favorite Indian curries and dishes.", price: 450),
//     Products(id: 21, NurseryId: 6,name:"Carrot", category: 'Vegetable Plants', description: "Grow your own vibrant and nutritious carrots, perfect for snacking and cooking.", price: 450),
//     Products(id: 22, NurseryId: 5,name:"Coriander", category: 'Vegetable Plants', description: "Elevate your culinary creations with the fresh and aromatic flavor of homegrown coriander.", price: 450),
// //
//     Products(id: 23, NurseryId: 4,name:"Mango", category: 'Fruits', description: "Experience the tropical delight of homegrown mangoes, juicy and bursting with flavor.", price: 250),
//     Products(id: 24, NurseryId: 1,name:"Banana", category: 'Fruits', description: "Cultivate your own bananas for a continuous supply of this potassium-rich tropical fruit.", price: 250),
//     Products(id: 25, NurseryId: 2,name:"Pomegranate", category: 'Fruits', description: "Enjoy the sweet and tart taste of homegrown pomegranates, packed with antioxidants.", price: 250),
//     Products(id: 26, NurseryId: 3,name:"Guava", category: 'Fruits', description: "Harvest delicious and nutritious guavas, a versatile fruit for snacks and beverages.", price: 250),
//     Products(id: 27, NurseryId: 4,name:"Papaya", category: 'Fruits', description: "Grow your own papayas, a tropical treat known for their sweetness and digestive benefits.", price: 250),
//     Products(id: 28, NurseryId: 5,name:"Apple", category: 'Fruits', description: "Create a backyard orchard with apple trees, providing crisp and refreshing fruits for various culinary delights.", price: 250),
//     Products(id: 29, NurseryId: 2,name:"Kiwi", category: 'Fruits', description: "Cultivate your own kiwi vines for a taste of this exotic and vitamin-rich fruit.", price: 250),
//     Products(id: 30, NurseryId: 6,name:"Grapes", category: 'Fruits', description: "Grow your vineyard at home with grape plants, offering juicy clusters for fresh eating or homemade wine.", price: 250),
//     Products(id: 31, NurseryId: 3,name:"Strawberry", category: 'Fruits', description: "Delight in the sweetness of homegrown strawberries, perfect for desserts and snacking.", price: 250),
//
//     // Products( id: , NurseryId: , name: "", category:"",description: "", price: 160),
//
//     Products( id: 32, NurseryId: 1, name: "MadhuMalti", category:"Climbers/Bel",description: "Embrace the beauty of Madhumalti, also known as Rangoon Creeper, renowned for its fragrant, color-changing blossoms. This versatile climber adds a touch of elegance to your garden, transforming from white to pink and finally to vibrant red as it matures", price: 160),
//     Products( id: 33, NurseryId: 2, name: "Bougainvillea", category:"Climbers/Bel",description: "Add a burst of vibrant color to your garden with the beautiful and hardy Bougainvillea climbers, available in various shades.", price: 160),
//     Products( id: 34, NurseryId: 3, name: "Ivy (Hedera)", category:"Climbers/Bel",description: "Decorate your walls and trellises with the evergreen and versatile Ivy, adding a touch of greenery to vertical spaces.", price: 160),
//    // Products( id: 35, NurseryId: 4, name: "Gloriosa Lily", category:"Climbers/Bel",description: "Grow Gloriosa Lily climbers for their striking, flame-like flowers that add a touch of drama to your garden.", price: 160),
//     Products( id: 36, NurseryId: 5, name: "Betel", category:"Climbers/Bel",description: "Cultivate the Betel vine for its aromatic leaves, commonly used in traditional practices and cultural ceremonies.", price: 160),
//     Products( id: 37, NurseryId: 6, name: "Climbing Rose", category:"Climbers/Bel",description: "Add a touch of romance with Climbing Roses, known for their classic beauty and the ability to cover arches and fences with blooms.", price: 160),
//     Products( id: 38, NurseryId: 5, name: "Morning Glory", category:"Climbers/Bel",description: "Embrace the charm of Morning Glory climbers, featuring colorful, trumpet-shaped flowers that bloom in the morning sunlight.", price: 160),
//     Products( id: 39, NurseryId: 6, name: "Honeysuckle ", category:"Climbers/Bel",description: "Plant Honeysuckle climbers for their fragrant and tubular flowers, attracting hummingbirds and providing a sweet scent.", price: 160),
//    // Products( id: 40, NurseryId: 3, name: "Passion Flower", category:"Climbers/Bel",description: "Cultivate the exotic and intricate Passionflower climbers, known for their unique blooms and ornamental value.", price: 160),
//
//     Products( id: 41, NurseryId: 1, name: "Tulsi", category:"Herbs",description: "Revered for its medicinal properties, Tulsi is a sacred herb in India, believed to bring health and prosperity. Perfect for home gardens, it adds both fragrance and utility.", price: 160),
//     Products( id: 42, NurseryId: 4, name: "Mint", category:"Herbs",description: "Refresh your senses with the aromatic and cooling properties of Mint, a versatile herb for culinary use and herbal teas.", price: 160),
//     Products( id: 43, NurseryId: 2, name: "Lemon grass", category:"Herbs",description: "Infuse your dishes with the citrusy aroma of Lemongrass, a fragrant herb used in cooking and herbal teas.", price: 160),
//     Products( id: 44, NurseryId: 3, name: "Water Hyacinth", category:"Aquatic Plants",description: "An excellent natural filter, Water Hyacinth adds beauty while helping maintain water quality in ponds.", price: 160),
//     Products( id: 45, NurseryId: 5, name: "Ashwagandha", category:"Herbs",description: "Known for its adaptogenic properties, Ashwagandha is an Ayurvedic herb that helps reduce stress and promote overall well-being.", price: 160),
//     Products( id: 46, NurseryId: 4, name: "Brahmi", category:"Herbs",description: "Boost cognitive function with Brahmi, an herb traditionally used in Ayurveda to enhance memory and promote mental clarity", price: 160),
//     Products( id: 47, NurseryId: 1, name: "Water Lilly", category:"Aquatic Plants",description: "Enhance the beauty of your water features with the elegant blooms of Water Lilies, creating a picturesque aquatic landscape.", price: 160),
//     Products( id: 48, NurseryId: 2, name: "Floating Ferns", category:"Aquatic Plants",description: "Create a lush and green water surface with Floating Fern, a low-maintenance aquatic plant.", price: 160),
//     Products( id: 49, NurseryId: 6, name: "Lotus", category:"Aquatic Plants",description: "Symbolizing purity and enlightenment, the Lotus adds a touch of serenity to ponds and water gardens.", price: 160),
//     Products( id: 50, NurseryId: 5, name: "Cattails", category:"Aquatic Plants",description: "Introduce a touch of the wild with Cattails, providing vertical interest and habitat for aquatic wildlife.", price: 160),
//   ];
// }