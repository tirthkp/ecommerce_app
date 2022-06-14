// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final IconData icon;
  final String text;
  const Categories({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
        left: 4,
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              size: 35,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
