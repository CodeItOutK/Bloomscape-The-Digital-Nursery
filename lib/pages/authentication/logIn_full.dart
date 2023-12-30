import 'dart:developer';

import 'package:bloomscape/pages/Home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../models/UIHelper_msg/alert_boxes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const  String routeName='/login';
  static Route route(){
    return MaterialPageRoute(builder: (_)=>LoginPage(),settings: RouteSettings(name: routeName),);
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  void login()async{
    String email=emailController.text.trim();
    String password = passwordController.text.trim();

    if(email=="" || password==""){
      log("Please fill all the details");
      UIHelper.showAlertDialogue(context,"Incomplete Data", "Please fill all the fields");
    }
    else{

      try{
        UserCredential userCredential= await FirebaseAuth.instance.
        signInWithEmailAndPassword(email: email, password: password);
        if(userCredential.user!=null){
          Navigator.pushReplacementNamed(context, '/home');
        }
      }on FirebaseAuthException catch(ex){
        UIHelper.showAlertDialogue(context,"Oops Error!", ex.code.toString());
      }


    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/plant_bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.green.shade700.withOpacity(0.9),
                  Colors.green.shade300.withOpacity(0.9),
                  Colors.lightGreen.shade100.withOpacity(0.9),
                  Colors.lightBlue.shade100.withOpacity(0.9),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              // begin: Alignment.topLeft,
              // end: Alignment.bottomRight
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children:[
                  SizedBox(height:50),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: const Text(
                      "WELCOME BACK",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          color: Colors.white
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 55,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Enter email",
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(40))
                        ),
                        prefixIcon: Icon(Icons.email),
                        filled: true,
                        fillColor: Colors.lightBlue.shade100.withOpacity(0.8),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 35,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Enter password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(40))
                        ),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        filled: true,
                        fillColor: Colors.lightBlue.shade100.withOpacity(0.8),
                      ),
                    ),
                  ),


                  const SizedBox(height: 55),

                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 60,
                    // width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: const LinearGradient(colors: [Colors.blue,Colors.green]),
                    ),
                    child: MaterialButton(
                      onPressed: (){
                        login();
                      },
                      child:const Text(
                        "LOG IN",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  const Divider(
                    height: 30,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 20),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an Account?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo.shade900.withOpacity(0.7),
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/signin');
                          },
                          child: Text("SIGN IN",
                            style: TextStyle(
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold

                            ),
                          ),

                        )
                      ]
                  ),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
