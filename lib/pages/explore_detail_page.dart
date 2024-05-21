import 'package:flutter/material.dart';
import 'package:flutter_imithon_2_oy/widgets/explore_detail_product.dart';

class ExploreDetailPage extends StatelessWidget {
  final Map<String, dynamic> exploreProduct;
  ExploreDetailPage({required this.exploreProduct});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment(1, -1),
            child: Container(
              height: 320,
              width: double.infinity,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      exploreProduct["room"],
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Align(
            alignment: Alignment(1, 1),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              height: MediaQuery.of(context).size.height - 280,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product List",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Wrap(
                    runSpacing: 15,
                    children: [
                      for (int i = 0; i < exploreProduct["details"].length; i++)
                        ExploreDetailProduct(
                            detail: exploreProduct["details"][i], index: i + 1),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
