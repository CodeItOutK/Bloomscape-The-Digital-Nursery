import 'package:flutter/material.dart';

import '../models/nursery_model.dart';
import 'widgets.dart';
class NurseryCard extends StatelessWidget {
  final Nursery nursery;
  const NurseryCard({Key? key, required this.nursery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,'/nursery_detail',arguments: nursery);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
              children:[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),
                        image: DecorationImage(
                            image: AssetImage(nursery.imageUrl),
                            fit: BoxFit.cover
                        )
                    ),

                  ),
                ),
                Positioned(
                  top: 10,right: 10,
                  child: Container(
                    width: 60,height: 30,
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular((5))),
                    child:Align(
                      alignment: Alignment.center,
                      child: Text('${nursery.deliveryTime} min',style: Theme.of(context).textTheme.bodyText1, ),

                    ),

                  ),
                ),

              ]
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nursery.name,style: Theme.of(context).textTheme.headline4,),
                SizedBox(height: 5,),
                // Text('${nursery.tags}'),
                NurseryTags(nursery: nursery),
                SizedBox(height: 5,),
                Text('${nursery.distance} km - \Rs${nursery.deliveryFee} delivery fee'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

