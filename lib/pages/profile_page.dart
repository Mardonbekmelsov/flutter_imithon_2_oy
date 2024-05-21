import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imithon_2_oy/pages/cart_page.dart';
import 'package:flutter_imithon_2_oy/pages/explore_page.dart';
import 'package:flutter_imithon_2_oy/pages/home_page.dart';
import 'package:flutter_imithon_2_oy/pages/wishlist_page.dart';
import 'package:flutter_imithon_2_oy/utils/profile_details_list.dart';
import 'package:flutter_imithon_2_oy/widgets/profile_detail_widget.dart';

class ProfilePage extends StatelessWidget {
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
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
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
                  stops: [0.2, 0.8],
                ),
              ),
              child: SingleChildScrollView(
                child: Wrap(
                  runSpacing: 20,
                  children: [
                    Text(
                      "My Profile",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(
                                "images/john_smith.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 235,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "John Smith",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "johnsmith@mymail.com",
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "images/settings.png",
                                    height: 25,
                                    width: 25,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                              "images/coupon.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        for (var detail in profileDetails)
                          ProfileDetailWidget(
                            profileDetail: detail,
                          ),
                      ],
                    ),
                  ],
                ),
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
                Navigator.push(context,
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
                CupertinoIcons.person_fill,
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
