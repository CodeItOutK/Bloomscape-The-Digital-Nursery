import 'package:bloomscape/widgets/nursery_tags.dart';
import 'package:flutter/material.dart';

import '../models/nursery_model.dart';

class NurseryInformation extends StatelessWidget {
  final Nursery nursery;
  const NurseryInformation({Key? key, required this.nursery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(nursery.name,style: Theme.of(context).textTheme.headline2!.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          ),),
          SizedBox(height: 10,),
          NurseryTags(nursery: nursery),
          SizedBox(height: 5,),
          Text("${nursery.distance} km away  Rs${nursery.deliveryFee} delivery fee",style: Theme.of(context).textTheme.bodyText1,),
          SizedBox(height: 10,),
          Text("Nursery Information",style: Theme.of(context).textTheme.headline5,),
          SizedBox(height: 5,),
          Text("${nursery.description}",
              style: Theme.of(context).textTheme.bodyText1,),
        ],
      ),
    );
  }
}
