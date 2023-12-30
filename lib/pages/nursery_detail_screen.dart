import 'package:bloomscape/blocs/basket/basket_bloc.dart';
import 'package:bloomscape/blocs/basket/basket_event.dart';
import 'package:bloomscape/blocs/basket/basket_state.dart';
// import 'package:bloomscape/models/M_models/products.dart';
import 'package:bloomscape/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/nursery_model.dart';
import '../widgets/nursery_information.dart';

class NurseryDetailsScreen extends StatelessWidget {
  // const NurseryDetailsScreen({Key? key}) : super(key: key);
  static const  String routeName='/nursery_detail';
  static Route route({required Nursery nursery}){
    return MaterialPageRoute(builder: (_)=>NurseryDetailsScreen(nursery:nursery),settings: RouteSettings(name: routeName),);
  }

  final Nursery nursery;
  const NurseryDetailsScreen({required this.nursery,});
  @override
  // Nursery nursery=Nursery.nurseries[0];

  Widget build(BuildContext context) {
    // Nursery nursery=Nursery.nurseries[0];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    primary: Theme.of(context).colorScheme.secondary,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/basket');
                  },
                  child: Text('Cart')),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                  MediaQuery.of(context).size.width,50 )
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(nursery.imageUrl),
                )
              ),
            ),
            NurseryInformation(nursery: nursery),

            ListView.builder(
              padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: nursery.tags.length,
                itemBuilder: (context,index){
                  return _buildMenuItems(nursery,context,index);
                }
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItems(Nursery nursery,BuildContext context,int index){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Text(nursery.tags[index],style: Theme.of(context).textTheme.headline3!.copyWith(color: Theme.of(context).colorScheme.secondary),),
        ),
        Column(
          children: nursery.products
              .where((product) => product.category==nursery.tags[index])
              .map(
                (product) =>Column(
                  children: [
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ListTile(
                        dense:true,
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(product.imageUrl),

                        ),
                        title: Text(product.name,style: Theme.of(context).textTheme.headline5,),
                        subtitle: Text(product.description,style: Theme.of(context).textTheme.bodyText1,),
                        trailing: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [Text("Rs ${product.price}",style: Theme.of(context).textTheme.bodyText1,),
                            BlocBuilder<BasketBloc,BasketState>(
                              builder: (context,state) {
                                return CupertinoButton(
                                  onPressed: () {
                                    context.read<BasketBloc>()..add(AddItem(product));
                                  },
                                  pressedOpacity: 0.4,

                                  child: IconButton(
                                      onPressed:(){

                                    // context.read<BasketBloc>()..add(AddItem(product));
                                    // context.read<BasketBloc>()..add(AddItem(menuItem));
                                  },
                                      icon: Icon(Icons.add_circle,color: Theme.of(context).colorScheme.secondary,)),
                                );
                              }
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(height: 2,),
                  ],
                ),
            ).toList(),
        ),
      ],
    );
  }
}





//bef integ M's code
/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/nursery_model.dart';
import '../widgets/nursery_information.dart';

class NurseryDetailsScreen extends StatelessWidget {
  // const NurseryDetailsScreen({Key? key}) : super(key: key);
  static const  String routeName='/nursery_detail';
  static Route route({required Nursery nursery}){
    return MaterialPageRoute(builder: (_)=>NurseryDetailsScreen(nursery:nursery),settings: RouteSettings(name: routeName),);
  }

  final Nursery nursery;
  const NurseryDetailsScreen({required this.nursery,});
  @override
  // Nursery nursery=Nursery.nurseries[0];

  Widget build(BuildContext context) {
    // Nursery nursery=Nursery.nurseries[0];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    primary: Theme.of(context).colorScheme.secondary,
                    shape: RoundedRectangleBorder(),
                  ),
                  onPressed: (){},
                  child: Text('Cart')),
            ],
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                  MediaQuery.of(context).size.width,50 )
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(nursery.imageUrl),
                )
              ),
            ),
            NurseryInformation(nursery: nursery),

            ListView.builder(
              padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: nursery.tags.length,
                itemBuilder: (context,index){
                  return _buildMenuItems(nursery,context,index);
                }
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItems(Nursery nursery,BuildContext context,int index){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Text(nursery.tags[index],style: Theme.of(context).textTheme.headline3!.copyWith(color: Theme.of(context).colorScheme.secondary),),
        ),
        Column(
          children: nursery.products
              .where((product) => product.category==nursery.tags[index])
              .map(
                (product) =>Column(
                  children: [
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ListTile(
                        dense:true,
                        contentPadding: EdgeInsets.zero,
                        title: Text(product.name,style: Theme.of(context).textTheme.headline5,),
                        subtitle: Text(product.description,style: Theme.of(context).textTheme.bodyText1,),
                        trailing: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [Text("Rs ${product.price}",style: Theme.of(context).textTheme.bodyText1,),
                            IconButton(onPressed:(){},
                                icon: Icon(Icons.add_circle,color: Theme.of(context).colorScheme.secondary,)),
                          ],
                        ),
                      ),
                    ),
                    Divider(height: 2,),
                  ],
                ),
            ).toList(),
        ),
      ],
    );
  }
}

 */