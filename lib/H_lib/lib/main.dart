// import 'package:bloomscape/Filter/filter_screen.dart';
// import 'package:bloomscape/repositories/nursery/nursery_repository.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'blocs/filters/filters_event.dart';
// import 'config/app_router.dart';
//
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiRepositoryProvider(
//       providers: [
//         RepositoryProvider<NurseryRepository>(
//           create: (context)=> NurseryRepository(),
//
//         ),
//       ],
//       child: MultiBlocProvider(
//         providers: [
//
//           BlocProvider(create: (context)=>
//           FilterBloc..add(FilterLoad()),
//           ),
//
//         ],
//         child: MaterialApp(
//           title: 'Flutter Demo',
//           debugShowCheckedModeBanner: false,
//           theme: theme(),
//           home: FilterScreen(), //yha pr filter page() ya jo bhi name rkha ho apne page ka vo
//           onGenerateRoute: AppRouter.OnGenerateRoute,
//
//           initialRoute: "FilterScreen ",// yha pr jo bhi filter vale pg k route ka name h vo ayega
//
//
//         ),
//       ),
//     );
//
//   }
// }
// // import 'package:bloomscape/models/Category_model_Og.dart';
// // import 'package:bloomscape/models/models.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import '../models/promo_model.dart';
// // import '../widgets/Category_Box.dart';
// // import '../widgets/Plant_Search_Box.dart';
// // import '../widgets/Promo_Box.dart';
// // import '../widgets/nursery_card.dart';
// //
// // class LandingPage extends StatefulWidget {
// //   const LandingPage({Key? key}) : super(key: key);
// //   static const  String routeName='/landing';
// //   static Route route(){
// //     return MaterialPageRoute(builder: (_)=>LandingPage(),settings: RouteSettings(name: routeName),);
// //   }
// //   @override
// //   State<LandingPage> createState() => _LandingPageState();
// // }
// //
// // class _LandingPageState extends State<LandingPage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Theme.of(context).backgroundColor,
// //       appBar:CustomAppBar(),
// //       body: SingleChildScrollView(
// //         child: Column(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             Padding(
// //               padding: const EdgeInsets.fromLTRB(8.0,12.0,8.0,12.0),
// //               child: SizedBox(height: 100,
// //                 child: ListView.builder(
// //                   scrollDirection: Axis.horizontal,
// //                   shrinkWrap : true,
// //                   itemCount: Category.categories.length,
// //                   itemBuilder: (context,index){
// //                     return CategoryBox(category : Category.categories[index]);
// //                   },
// //                 ),
// //               ),
// //             ),
// //
// //             Padding(
// //               padding: const EdgeInsets.fromLTRB(8.0,12.0,8.0,12.0),
// //               child: SizedBox(height: 125,
// //                 child: ListView.builder(
// //                   scrollDirection: Axis.horizontal,
// //                   shrinkWrap : true,
// //                   itemCount: Promo.promos.length,
// //                   itemBuilder: (context,index){
// //                     return PromoBox(promo:Promo.promos[index]);
// //                   },
// //                 ),
// //               ),
// //             ),
// //
// //             PlantSearchBox(),
// //
// //             Padding(
// //               padding: const EdgeInsets.all(8.0),
// //               child: Align(
// //                   alignment: Alignment.topLeft,
// //                   child: Text('Top Rated',style: Theme.of(context).textTheme.headline4,)
// //               ),
// //             ),
// //
// //             ListView.builder(
// //                 scrollDirection: Axis.vertical,
// //                 shrinkWrap: true,
// //                 physics: NeverScrollableScrollPhysics(),
// //                 itemCount: Nursery.nurseries.length,
// //                 itemBuilder: (context,index){
// //                   return NurseryCard(nursery : Nursery.nurseries[index]);
// //                 }),
// //
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // // class NurseryCard extends StatelessWidget {
// // //   final Nursery nursery;
// // //   const NurseryCard({Key? key, required this.nursery}) : super(key: key);
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: [
// // //         Stack(
// // //           children:[
// // //               Padding(
// // //                 padding: const EdgeInsets.all(8.0),
// // //                 child: Container(
// // //                 width: MediaQuery.of(context).size.width,
// // //                 height: 150,
// // //                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),
// // //                 image: DecorationImage(
// // //                     image: AssetImage(nursery.imageUrl),
// // //                     fit: BoxFit.cover
// // //                 )
// // //                 ),
// // //
// // //             ),
// // //               ),
// // //             Positioned(
// // //               top: 10,right: 10,
// // //               child: Container(
// // //                 width: 60,height: 30,
// // //                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((5))),
// // //                 child:Align(
// // //                       alignment: Alignment.center,
// // //                       child: Text('${nursery.deliveryTime} min',style: Theme.of(context).textTheme.bodyText1, ),
// // //
// // //                 ),
// // //
// // //               ),
// // //             ),
// // //
// // //           ]
// // //         ),
// // //
// // //         Padding(
// // //           padding: const EdgeInsets.all(8.0),
// // //           child: Column(
// // //             crossAxisAlignment: CrossAxisAlignment.start,
// // //             children: [
// // //               Text(nursery.name,style: Theme.of(context).textTheme.headline5,),
// // //               SizedBox(height: 5,),
// // //               // Text('${nursery.tags}'),
// // //               Row(
// // //                 children:
// // //                   nursery.tags
// // //                   .map(
// // //                     (tag) => nursery.tags.indexOf(tag)==
// // //                               nursery.tags.length-1
// // //                         ?Text(tag,style: Theme.of(context).textTheme.bodyText1,)
// // //                         :Text('$tag,',style: Theme.of(context).textTheme.bodyText1,),
// // //                   ).toList()
// // //               ),
// // //               SizedBox(height: 5,),
// // //               Text('${nursery.distance} km - \Rs${nursery.deliveryFee} delivery fee')
// // //             ],
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }
// //
// //
// // // class PlantSearchBox extends StatelessWidget {
// // //   const PlantSearchBox({Key? key}) : super(key: key);
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Padding(
// // //       padding: const EdgeInsets.all(8.0),
// // //       child: Row(
// // //         children: [
// // //           Expanded(
// // //             child: TextField(
// // //               decoration: InputDecoration(
// // //                   fillColor: Colors.white,
// // //                   filled: true,
// // //                   suffixIcon: Icon(Icons.search,color: Theme.of(context).primaryColor,),
// // //                   hintText: 'What would you like to plant?',
// // //                   contentPadding:
// // //                   const EdgeInsets.only(left: 20,bottom: 5,top: 12.5),
// // //                   focusedBorder: OutlineInputBorder(
// // //                     borderSide: BorderSide(color: Colors.white),
// // //                     borderRadius: BorderRadius.circular(10),
// // //                   ),
// // //                   enabledBorder: UnderlineInputBorder(
// // //                     borderSide: BorderSide(color: Colors.white),
// // //                     borderRadius: BorderRadius.circular(10),
// // //                   )
// // //               ),
// // //             ),
// // //           ),
// // //           SizedBox(width: 10,),
// // //           Container(
// // //             width: 50,
// // //             height: 50,
// // //             decoration: BoxDecoration(
// // //               color: Colors.white,
// // //               borderRadius: BorderRadius.circular(5),
// // //             ),
// // //             child: IconButton(icon: Icon(Icons.menu),color: Theme.of(context).primaryColor, onPressed: () {  },),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// //
// //
// // // class PromoBox extends StatelessWidget {
// // //   const PromoBox({Key? key}) : super(key: key);
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Stack(
// // //       children: [
// // //         Container(
// // //           margin: EdgeInsets.only(right: 5.0),
// // //           width: MediaQuery.of(context).size.width-40,
// // //           decoration: BoxDecoration(
// // //             borderRadius: BorderRadius.circular(5.0),
// // //             color: Theme.of(context).primaryColor,
// // //             image:DecorationImage(image:AssetImage('assets/images/Promotions/add1.jpg'),fit: BoxFit.cover)
// // //           ),
// // //         ),
// // //
// // //         Container(
// // //           margin: EdgeInsets.only(right: 5.0),
// // //           width: MediaQuery.of(context).size.width-40,
// // //           decoration: BoxDecoration(
// // //               borderRadius: BorderRadius.circular(5.0),
// // //               color: Theme.of(context).primaryColor,
// // //           ),
// // //           child: Padding(
// // //             padding: const EdgeInsets.only(top:10.0, left:15.0,right: 125),
// // //             child: Column(
// // //               crossAxisAlignment: CrossAxisAlignment.start,
// // //               children: [
// // //                 Text("FREE Delivery On Your First 3 Orders!",
// // //                   style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white),
// // //                 ),
// // //                 SizedBox(height: 15,),
// // //                 Text("Place an order of Rs 350 and more and the delivery fee is on us",
// // //                   style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ]
// // //     );
// // //   }
// // // }
// //
// //
// // // class CategoryBox extends StatelessWidget {
// // //   final Category category;
// // //   const CategoryBox({Key? key, required this.category}) : super(key: key);
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Container(
// // //       width: 80,
// // //       margin: const EdgeInsets.only(right: 5.0),
// // //       decoration: BoxDecoration(
// // //         color: Theme.of(context).primaryColor,
// // //         borderRadius: BorderRadius.circular(5.0)
// // //       ),
// // //       child: Stack(
// // //         children: [
// // //           Positioned(
// // //             top: 10,
// // //             left: 10,
// // //             child: Container(
// // //               height: 50,
// // //               width: 60,
// // //               decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),),
// // //               child: category.image,),
// // //           ),
// // //           Padding(
// // //             padding: const EdgeInsets.all(8.0),
// // //             child: Align(
// // //               alignment: Alignment.bottomCenter,
// // //               child: Text(category.name,style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),)),
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// //
// //
// // class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
// //   const CustomAppBar({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return AppBar(
// //       backgroundColor: Theme.of(context).primaryColor,
// //       leading: IconButton(
// //           onPressed: () { },
// //           icon: Icon(Icons.person)
// //       ),
// //       centerTitle: false,
// //       title: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text('CURRENT LOCATION',style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white)),
// //           Text('Indore, Bhavarkua',style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white))
// //         ],
// //       ),
// //     );
// //
// //
// //   }
// //
// //   @override
// //   // TODO: implement preferredSize
// //   Size get preferredSize => Size.fromHeight(56.0);
// // }