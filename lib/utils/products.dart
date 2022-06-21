// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/pages/product_info.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final String imgpath, name, rating, price;
  const Products(
      {Key? key,
      required this.imgpath,
      required this.name,
      required this.rating,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProductInfo(
                Products(
                  imgpath: imgpath,
                  name: name,
                  rating: rating,
                  price: price,
                ),
              ),
            ),
          );
        },
        child: Container(
          height: 325,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    imgpath,
                    height: 200,
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                    // color: Colors.blueGrey[900],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '$rating⭐',
                  style: TextStyle(
                    // color: Colors.blueGrey[900],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$$price',
                  style: TextStyle(
                    // color: Colors.blueGrey[900],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
