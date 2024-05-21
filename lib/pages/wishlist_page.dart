import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imithon_2_oy/pages/explore_page.dart';
import 'package:flutter_imithon_2_oy/pages/home_page.dart';
import 'package:flutter_imithon_2_oy/pages/profile_page.dart';
import 'package:flutter_imithon_2_oy/utils/explore_saved_list.dart';
import 'package:flutter_imithon_2_oy/utils/wishlist.dart';
import 'package:flutter_imithon_2_oy/widgets/explore_saved_widget.dart';
import 'package:flutter_imithon_2_oy/widgets/product.dart';
import 'package:flutter_imithon_2_oy/widgets/wishlist_widget.dart';

class WishListPage extends StatefulWidget {
  @override
  State<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
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
              color: Color(0xff63771E),
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
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: MediaQuery.of(context).size.height - 180,
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Wishlist",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.zero),
                        ),
                        onPressed: () {
                          setState(() {
                            wishlist.clear();
                          });
                        },
                        child: wishlist.isNotEmpty
                            ? Row(
                                children: [
                                  Text(
                                    "Clear All",
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.clear,
                                    color: Colors.grey.shade400,
                                    size: 18,
                                  ),
                                ],
                              )
                            : SizedBox(
                                width: 1,
                              ),
                      )
                    ],
                  ),
                  if (wishlist.isEmpty)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "your wishlist is empty",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  Wrap(
                    runSpacing: 15,
                    children: [
                      for (var product in wishlist)
                        WishlistWidget(
                          product: product,
                          onTap: () {
                            setState(
                              () {
                                wishlist.removeWhere(
                                    (element) => element == product);
                              },
                            );
                          },
                        ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Explore Saved",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.zero),
                        ),
                        onPressed: () {
                          setState(() {
                            exploreSavedList.clear();
                          });
                        },
                        child: exploreSavedList.isNotEmpty
                            ? Row(
                                children: [
                                  Text(
                                    "Clear All",
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.clear,
                                    color: Colors.grey.shade400,
                                    size: 18,
                                  ),
                                ],
                              )
                            : SizedBox(
                                width: 1,
                              ),
                      )
                    ],
                  ),
                  if (exploreSavedList.isEmpty)
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "your explore saved list is empty",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ],
                    ),
                  Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    children: [
                      for (var explore in exploreSavedList)
                        ExploreSavedWidget(
                          explore: explore,
                          onTap: () {
                            exploreSavedList
                                .removeWhere((element) => element == explore);
                          },
                        ),
                    ],
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
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Icon(
                CupertinoIcons.square_grid_2x2,
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
              child: Icon(
                CupertinoIcons.heart_fill,
                color: Color(0xff63771E),
                size: 35,
              ),
            ),
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));},
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
