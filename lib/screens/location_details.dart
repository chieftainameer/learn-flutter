// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LocationDetails extends StatelessWidget {
  const LocationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [

             SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Image.network(
                "https://cdn.pixabay.com/photo/2022/11/12/16/42/elk-7587415_960_720.jpg",
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                )
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text("Rio Zadorra",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                      Text("Un rio de flujo natural")
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.star,color: Colors.red),
                          Text("41")
                        ],
                      )
                    ],
                  ),
                ],
              ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.call,color: Colors.blue,),
                        Text("Call",style: TextStyle(color: Colors.blue),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.route,color: Colors.blue,),
                        Text("Route",style: TextStyle(color: Colors.blue),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.share,color: Colors.blue,),
                        Text("Share",style: TextStyle(color: Colors.blue),)
                      ],
                    ),
                  ],
                ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: Text("This guide then takes a step back to explain Flutter’s approach to layout, and shows how to place a single widget on the screen. After a discussion of how to lay widgets out horizontally and vertically, some of the most common layout widgets are covered.This guide then takes a step back to explain Flutter’s approach to layout, and shows how to place a single widget on the screen. After a discussion of how to lay widgets out horizontally and vertically, some of the most common layout widgets are covered."),
                )
          ],
        ),

      ),
    );
  }
}