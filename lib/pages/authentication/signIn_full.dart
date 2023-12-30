import 'dart:developer';

import 'package:bloomscape/pages/Home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../models/UIHelper_msg/alert_boxes.dart';




class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  static const  String routeName='/signin';
  static Route route(){
    return MaterialPageRoute(builder: (_)=>SignInPage(),settings: RouteSettings(name: routeName),);
  }

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController cPasswordController=TextEditingController();

  void createAccount()async{
    String email=emailController.text.trim();
    String password=passwordController.text.trim();
    String cPassword=cPasswordController.text.trim();

    if(email=="" || password=="" || cPassword==""){
      log("Please fill all the details");
      UIHelper.showAlertDialogue(context,"Incomplete Data", "Please fill all the fields");
    }
    else if(password!=cPassword){
      log("Passwords Do not match!");
      UIHelper.showAlertDialogue(context,"Password mismatch", "Passwords Do not match!");
    }
    else{
      try{
        UserCredential userCredential= await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
        log("User created");
        if(userCredential.user!=null) {
          // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomePage()));
          Navigator.pushReplacementNamed(context, '/home');
        }
      }on FirebaseAuthException
      catch(e){
        UIHelper.showAlertDialogue(context,"Oops Error!", e.code.toString());
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
                  SizedBox(height:40),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: const Text(
                      "Welcome To the Blossom!",
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
                    height: 25,
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

                  const SizedBox(
                    height: 25,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextFormField(
                      controller: cPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirm password",
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

                  const SizedBox(height: 35),

                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: const LinearGradient(colors: [Colors.blue,Colors.green]),
                    ),
                    child: MaterialButton(
                      onPressed: (){
                        createAccount();
                        // Navigator.pushReplacementNamed(context,'/home');
                      },
                      child:const Text(
                        "SIGN IN",
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
                          "Already have an Account?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo.shade900.withOpacity(0.7),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.5,
                          child: TextButton(

                            onPressed: (){
                              Navigator.pushReplacementNamed(context, '/login');
                            },
                            child: Text("LOG IN",style: TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.green[900],
                            ),
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



