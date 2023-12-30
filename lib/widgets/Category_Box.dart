import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/nursery/nursery_bloc.dart';
import '../models/nursery_model.dart';
import '../models/transferred_models/category_model.dart';

class CategoryBox extends StatelessWidget {
  final Category category;
  const CategoryBox({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Nursery> nurseries = context.select((NurseryBloc bloc) {
      if (bloc.state is NurseryLoaded) {
        return (bloc.state as NurseryLoaded).nurseries;
      } else {
        return <Nursery>[];
      }
    });
    final List<Nursery> filteredNurseries=nurseries.where((nursery)=>nursery.tags.contains(category.name)).toList();
    // final List<Nursery>nurseries = Nursery.nurseries.where((nursery) => nursery.tags.contains(category.name),).toList();
    return InkWell(
      onTap: (){
        print("Filtered nurseries are-");
        print(filteredNurseries);
        Navigator.pushNamed(context, '/nursery_listing',arguments: filteredNurseries);
        // Navigator.pushNamed(context, '/nursery_listing',arguments: nurseries);
      },
      child: Container(
        width: 80,
        margin: const EdgeInsets.only(right: 5.0),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(5.0)
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),),
                // child: category.image,
                child: Image.asset(category.imageUrl),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(category.name,style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}