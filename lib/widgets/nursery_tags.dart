import 'package:flutter/material.dart';

import '../models/nursery_model.dart';
class NurseryTags extends StatelessWidget {
  const NurseryTags({
    super.key,
    required this.nursery,
  });

  final Nursery nursery;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children:
          nursery.tags
              .map(
                (tag) => nursery.tags.indexOf(tag)==
                nursery.tags.length-1
                ?Text(tag,style: Theme.of(context).textTheme.bodyText1,)
                :Text('$tag,',style: Theme.of(context).textTheme.bodyText1,),
          ).toList()
      ),
    );
  }
}