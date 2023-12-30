import 'package:flutter/material.dart';

class PlantSearchBox extends StatelessWidget {
  const PlantSearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.search,color: Theme.of(context).primaryColor,),
                  hintText: 'What would you like to plant?',
                  contentPadding:
                  const EdgeInsets.only(left: 20,bottom: 5,top: 12.5),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(icon: Icon(Icons.menu),color: Theme.of(context).primaryColor,
              onPressed: () {
              // Navigator.pushNamed(context, '/filters');
              },),
          ),
        ],
      ),
    );
  }
}