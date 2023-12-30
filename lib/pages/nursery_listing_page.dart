import 'package:bloomscape/widgets/nursery_card.dart';
import 'package:flutter/material.dart';

import '../models/nursery_model.dart';

class NurseryListingPage extends StatelessWidget {
  static const  String routeName='/nursery_listing';
  static Route route({required List<Nursery>nurseries}){
    return MaterialPageRoute(builder: (_)=>NurseryListingPage(nurseries:nurseries),settings: RouteSettings(name: routeName),);
  }

  final List<Nursery>nurseries;
  const NurseryListingPage({required this.nurseries});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nurseries"),centerTitle: true,backgroundColor: Theme.of(context).primaryColor,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: nurseries.length,
            itemBuilder: (context,index){
            return NurseryCard(nursery: nurseries[index]);
            }
        ),
      ),


    );
  }
}
