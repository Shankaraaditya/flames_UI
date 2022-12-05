import 'dart:ui';

import 'package:flames_assignment/messege.dart';
import 'package:flames_assignment/status.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 60,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                // backgroundColor: Colors.yellow,
                radius: 25,
                // // backgroundImage: Image(image: AssetImage('images/profile.jpg')),
                // foregroundImage: Image(image: AssetImage('images/profile.jpg')),
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              Text(
                'Puzzles',
                style: TextStyle(color: Colors.redAccent, fontSize: 30),
              ),
              IconButton(
                icon: Icon(Icons.settings, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),

      // body: Column(
      //   children: [
      //     Row(children: [
      //       Status(name: 'Aditya'),
      //       Status(name: 'Aditya'),
      //       Status(name: 'Aditya'),
      //       Status(name: 'Aditya'),

      //     ],)
      //   ],
      // ),

      body: Column(
        children: [
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              children: [
                // ==========================LIKE==================================================
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Container(
                      width: 80,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[400],
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/tim.jpg',
                              ),
                              fit: BoxFit.cover)),
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                            '20 Likes',
                            style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                          ),
                          Icon(Icons.favorite_border_sharp, color: Colors.grey,)
                                ],
                              ))),
                    ),
                    Container(
                      height: 20,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text(
                        'Likes',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    )
                  ]),
                ),
                // ===============================LIKE===========================================
                

                Status(
                  name: 'Likes',
                  pic: 'james',
                ),

                Status(name: 'Jordan', pic: 'jordan'),
                Status(
                  name: 'Tim',
                  pic: 'tim',
                ),
                Status(
                  name: 'James',
                  pic: 'james',
                ),
                Status(
                  name: 'Rogers',
                  pic: 'rogers',
                ),
                Status(
                  name: 'Tommy',
                  pic: 'tim',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 70),
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              children: [
                Messege(
                  contact: 'Jordan',
                  typing: true,
                  read: false,
                  img: 'james',
                  time: '01:12',
                ),
                Messege(
                  contact: 'Tim',
                  typing: false,
                  read: true,
                  img: 'jordan',
                  time: '03:12',
                ),
                Messege(
                  contact: 'James',
                  typing: false,
                  read: false,
                  img: 'rogers',
                  time: '04:12',
                ),
                Messege(
                  contact: 'Rogers',
                  typing: true,
                  read: true,
                  img: 'tim',
                  time: '07:12',
                ),
                Messege(
                  contact: 'Tommy',
                  typing: false,
                  read: false,
                  img: 'james',
                  time: '09:12',
                ),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pentagon_outlined,
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded), label: ''),
        ],
      ),
    );
  }
}
