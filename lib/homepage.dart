import 'dart:ui';

import 'package:flames_assignment/messege.dart';
import 'package:flames_assignment/status.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 220,
                  color: Color.fromARGB(255, 251, 241, 246),
                  // color: Color.fromARGB(255, 249, 243, 246),
                ),
      
      
                Column(
                  children: [
                    Container(height: 70,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/images/rogers.jpg",),
                            radius: 25,
                          ),
                          Text("Flames" ,
                          style: GoogleFonts.nunito(
                            fontSize: 30,
                            color: Colors.redAccent
                          ),
                          ),
                          Icon(Iconsax.setting_4)
                        ],
                      ),
                    ),
                    ),
      
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
                                image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/tim.jpg',
                                    ),
                                    fit: BoxFit.cover)),
                            child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                     Icon(
                                      Icons.favorite,
                                      color: Colors.white60,
                                      size: 25,
                                     ),
                                     Text(
                                      '20',
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
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
                            child: const Center(
                                child: Text(
                              'Likes',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          )
                        ]),
                      ),
                      // ===============================LIKE===========================================
      
                      const Status(
                        name: 'Thor',
                        pic: 'james',
                      ),
      
                      const Status(
                        name: 'Jordan',
                        pic: 'jordan'
                        ),
                      const Status(
                        name: 'Tim',
                        pic: 'tim',
                      ),
                      const Status(
                        name: 'James',
                        pic: 'james',
                      ),
                      const Status(
                        name: 'Rogers',
                        pic: 'rogers',
                      ),
                      const Status(
                        name: 'Tommy',
                        pic: 'tim',
                      ),
                    ],
              ),
            ),
              const SizedBox(
              height: 10,
            ),
      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child:  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: GoogleFonts.nunito(fontSize: 18),
                      prefixIcon: const Icon(
                        Iconsax.search_normal,
                        size: 25,
                      ),
                      
                    ),
                  ),
                ),
              ),
            ),
                  ],
                ),
          
      
      
              ],
            ),
            
            const SizedBox(
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
                    verified: true,
                  ),
                  Messege(
                    contact: 'Tim',
                    typing: false,
                    read: true,
                    img: 'jordan',
                    time: '03:12',
                    verified: false,
                  ),
                  Messege(
                    contact: 'James',
                    typing: false,
                    read: false,
                    img: 'rogers',
                    time: '04:12',
                    verified: true,
                  ),
                  Messege(
                    contact: 'Rogers',
                    typing: true,
                    read: true,
                    img: 'tim',
                    time: '07:12',
                    verified: true,
                  ),
                  Messege(
                    contact: 'Tommy',
                    typing: false,
                    read: false,
                    img: 'james',
                    time: '09:12',
                    verified: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Iconsax.home,
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Iconsax.global_search), label: ''),
          BottomNavigationBarItem(icon: Icon(Iconsax.calendar), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.message), label: ''),
        ],
      ),
    );
  }
}
