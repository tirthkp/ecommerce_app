// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_app/pages/card.dart';
import 'package:ecommerce_app/pages/categories.dart';
import 'package:ecommerce_app/pages/products.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.inventory_2_outlined,
            ),
            label: 'Products',
            tooltip: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
            ),
            label: 'Notifications',
            tooltip: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Person',
            tooltip: 'Person',
          ),
        ],
        backgroundColor: Color.fromARGB(255, 2, 29, 52),
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.blueGrey,
      ),
      backgroundColor: Color.fromARGB(255, 2, 29, 52),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 45,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextField(
                          cursorColor: Colors.blueGrey[900],
                          cursorHeight: 20,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'I\'m Searching for...',
                            hintStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.blueGrey[900],
                            ),
                          ),
                        ),
                      ),
                      // width: ,
                      // child: Padding(
                      //   padding: const EdgeInsets.fromLTRB(20, 12, 12, 12),
                      //   child: Row(
                      //     children: [
                      //       Icon(
                      //         Icons.search_sharp,
                      //         // color: Colors.grey,
                      //         size: 25,
                      //       ),
                      //       SizedBox(
                      //         width: 10,
                      //       ),
                      //       Text(
                      //         'I\'m searching for...                  ',
                      //         style: TextStyle(
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.bold,
                      //           color: Colors.blueGrey[900],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Container(
                      height: 45,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        // color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardDetails(
                      text1: 'New Arrival',
                      text2: 'Item upto 30%',
                      color: Colors.grey,
                      imgpath: 'assets/images/img.png',
                    ),
                    CardDetails(
                      text1: 'Flat 25% off',
                      text2: 'Offer of the day',
                      color: Color.fromARGB(255, 46, 1, 105),
                      imgpath: 'assets/images/img2.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Categories',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Categories(
                      icon: Icons.assignment_outlined,
                      text: 'Stationary',
                    ),
                    Categories(
                      icon: Icons.camera_alt_outlined,
                      text: 'Electronic',
                    ),
                    Categories(
                      icon: Icons.work_outline,
                      text: 'Houseware',
                    ),
                    Categories(
                      icon: Icons.headphones_outlined,
                      text: 'Collection',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Something You Like',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Products(
                      imgpath: 'assets/images/img1.png',
                      name: 'Smart Band',
                      rating: '4.3',
                      price: '100.99',
                    ),
                    Products(
                      imgpath: 'assets/images/img2.png',
                      name: 'Nike Air Force',
                      rating: '4.9',
                      price: '340.50',
                    ),
                    Products(
                      imgpath: 'assets/images/img.png',
                      name: 'Smart Watch',
                      rating: '4.5',
                      price: '150.00',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
