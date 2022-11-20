// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("App Reviews"),
      ),
      body: MainPage(),
      drawer: Drawer(
        child: DrawerMenu(),
      ),
    );
  }
}


class DrawerMenu extends StatelessWidget {

  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          leading: Icon(Icons.room_service),
          title: Text("Services"),
        ),
        ListTile(
          leading: Icon(Icons.local_post_office),
          title: Text("About Us"),
        ),
        ListTile(
          leading: Icon(Icons.contact_mail),
          title: Text("Contact Us"),
        ),
      ],
    );
  }
}


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
             Text(
              "Strawbery Pavlove",
              style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  """
                   lorem ipsu doler sit amit lorem ipsu doler sit amit lorem ipsu doler sit amit.
                   lorem ipsu doler sit amit lorem ipsu doler sit amit lorem ipsu doler sit amit
                   lorem ipsu doler sit amit lorem ipsu doler sit amit lorem ipsu doler sit amit.
                   lorem ipsu doler sit amit lorem ipsu doler sit amit lorem ipsu doler sit amit
                   lorem ipsu doler sit amit lorem ipsu doler sit amit lorem ipsu doler sit amit.
                   lorem ipsu doler sit amit lorem ipsu doler sit amit lorem ipsu doler sit amit
                   lorem ipsu doler sit amit lorem ipsu doler sit amit lorem ipsu doler sit amit.
                   lorem ipsu doler sit amit lorem ipsu doler sit amit lorem ipsu doler sit amit
                   """,
                  style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.normal,color: Colors.black),
                  textAlign: TextAlign.start,
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star,color: Colors.green,),
                      Icon(Icons.star),
                      Icon(Icons.star),
                    ],
                  ),
                  Text("179 Reviews"),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                     Icon(Icons.receipt_rounded),
                     Text("PREP:"),
                     Text("25 min")
                    ],
                  ),
                  Column(
                    children: const [
                     Icon(Icons.timer,color: Colors.black,),
                     Text("COOK:"),
                     Text("1 hr")
                    ],
                  ),
                  Column(
                    children: const [
                     Icon(Icons.dining),
                     Text("FEEDS:"),
                     Text("4-6")
                    ],
                  ),
                ],
              ),

          ],
        ),
      ),
    );
  }
}