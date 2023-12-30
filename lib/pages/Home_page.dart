import 'package:bloomscape/pages/Landing_Page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const  String routeName='/home';
  static Route route(){
    return MaterialPageRoute(builder: (_)=>HomePage(),settings: RouteSettings(name: routeName),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Plant a\n tree for life",style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 1,
            ),),

            Padding(
              padding: const EdgeInsets.fromLTRB(28.0,8.0,8.0,8.0),
              child: Container(
                width: MediaQuery.of(context).size.width-50,
                height: MediaQuery.of(context).size.height-400,
                decoration:const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/plant1.jpeg"),
                      fit: BoxFit.cover,scale: 1.3
                    ),
                  ),

              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Connecting The locals with the Blossoms",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                  wordSpacing: 1,
                ),),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, '/landing');
              },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF55AA9C),
                  shape: BoxShape.circle,
                ),
                child: Text("GO",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}