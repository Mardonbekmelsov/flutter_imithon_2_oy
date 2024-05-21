import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Map<String, dynamic> category;
  Category({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(
            category["image"],
          ),
        ),
      ),
    );
  }
}
