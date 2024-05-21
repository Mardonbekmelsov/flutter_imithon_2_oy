import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imithon_2_oy/pages/explore_detail_page.dart';

class ExploreSavedWidget extends StatefulWidget {
  final Map<String, dynamic> explore;
  final Function() onTap;
  ExploreSavedWidget({required this.explore, required this.onTap});

  @override
  State<ExploreSavedWidget> createState() => _ExploreSavedWidgetState();
}

class _ExploreSavedWidgetState extends State<ExploreSavedWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: 160,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            widget.explore["room"],
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: widget.onTap,
            child: Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.clear,
                color: Colors.amber.shade800,
                size: 15,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ExploreDetailPage(exploreProduct: widget.explore)));
            },
            child: Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.cart,
                color: Color(0xff63771E),
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
