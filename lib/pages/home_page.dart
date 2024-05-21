import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_imithon_2_oy/pages/explore_page.dart';
import 'package:flutter_imithon_2_oy/pages/profile_page.dart';
import 'package:flutter_imithon_2_oy/pages/wishlist_page.dart';
import 'package:flutter_imithon_2_oy/utils/best_offer_list.dart';
import 'package:flutter_imithon_2_oy/utils/category_list.dart';
import 'package:flutter_imithon_2_oy/utils/products_list.dart';
import 'package:flutter_imithon_2_oy/widgets/best_offers.dart';
import 'package:flutter_imithon_2_oy/widgets/category.dart';
import 'package:flutter_imithon_2_oy/widgets/product.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment(1, -1),
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                // right: 0,
                top: 55,
              ),
              height: 320,
              width: double.infinity,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "images/home_page.png",
                ),
                fit: BoxFit.cover,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Dekorin",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Icon(CupertinoIcons.search),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Search Product"),
                            SizedBox(
                              width: 70,
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "images/bell.png",
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(1, 1),
            child: Container(
              height: MediaQuery.of(context).size.height - 320,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffF2F2E1),
                      Colors.white,
                    ],
                    stops: [
                      0.2,
                      0.8
                    ]),
              ),
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Best Offers",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 162,
                    // color: Colors.amber,
                    child: Expanded(
                      child: ListView(
                        padding: EdgeInsets.only(left: 24),
                        itemExtent: 160,
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (var product in bestOffers)
                            BestOffer(product: product),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 24, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "See more",
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey.shade400,
                                size: 18,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var category in categories)
                          Category(category: category),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 24, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Product",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "Sort by Best Selling",
                                style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.tune,
                                color: Colors.grey.shade400,
                                size: 18,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: [
                        for (var product in products) Product(product: product),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Color(0xffFCFDF8),
        height: 70,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Icon(
                CupertinoIcons.square_grid_2x2_fill,
                color: Color(0xff63771E),
                size: 35,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ExplorePage()));
              },
              child: Icon(
                Icons.explore_outlined,
                color: Color(0xff63771E),
                size: 35,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => WishListPage()));
              },
              child: Icon(
                CupertinoIcons.heart,
                color: Color(0xff63771E),
                size: 35,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: Icon(
                CupertinoIcons.person,
                color: Color(0xff63771E),
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
