import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          spacer(height: 70.0),
          Image.asset("assets/images/login.png",fit: BoxFit.cover,),
          spacer(height: 15.0),
          const Text("Welcome Back",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Enter Email",
                    labelText: "Email"
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password"
                  ),
                ),
                spacer( height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/");
                      },
                      child: const Text("Login",style: TextStyle(fontSize: 16.0),),
                      style: TextButton.styleFrom(minimumSize: Size(110,40)),
                      )
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}

Widget spacer({required height}){
  return SizedBox(
    height: height,
  );
}